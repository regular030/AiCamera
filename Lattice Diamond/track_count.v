// track_count.v
// Sequential nearest-neighbor tracker + bidirectional line-cross counts.
// Rewritten as a small FSM so the association search is spread across
// multiple clocks instead of one very deep combinational path.
//
// One detection update is processed at a time. A single pending detection
// can be queued while the current one is being scanned.
//
// Outputs:
//  - det_done pulses whenever one person detection has been fully processed
//    (matched, allocated, or dropped due to no free track).
//  - det_track_valid pulses only when the processed detection got a track.
//
// Diamond-safe: no block-local declarations.

`timescale 1ns/1ps

module track_count #(
    parameter integer MAX_T = 16,

    // Line to count crossings (vertical line)
    parameter [15:0] X_LINE = 16'd968,

    // Zone A (lower/middle sidewalk band)
    parameter [15:0] YA0 = 16'd450,
    parameter [15:0] YA1 = 16'd750,

    // Zone B (upper sidewalk band)
    parameter [15:0] YB0 = 16'd200,
    parameter [15:0] YB1 = 16'd420,

    // Track association gate (pixels)
    parameter [15:0] GATE_R = 16'd40,
    parameter [7:0]  MISS_MAX = 8'd8,
    parameter [7:0]  AGE_MIN  = 8'd3
)(
    input  wire clk,
    input  wire rst_n,

    input  wire frame_tick,
    input  wire clear_counts,

    input  wire        det_valid,
    input  wire        det_is_person,
    input  wire [15:0] det_cx,
    input  wire [15:0] det_cy,
    input  wire [7:0]  det_score,

    output reg         det_done,
    output reg         det_track_valid,
    output reg         det_track_new,
    output reg  [4:0]  det_track_id,

    output reg  [31:0] count_A_LR,
    output reg  [31:0] count_A_RL,
    output reg  [31:0] count_B_LR,
    output reg  [31:0] count_B_RL
);

    localparam [1:0] ST_IDLE  = 2'd0;
    localparam [1:0] ST_SCAN  = 2'd1;
    localparam [1:0] ST_APPLY = 2'd2;

    integer i;

    function in_zoneA;
        input [15:0] y;
        begin
            in_zoneA = (y >= YA0 && y <= YA1);
        end
    endfunction

    function in_zoneB;
        input [15:0] y;
        begin
            in_zoneB = (y >= YB0 && y <= YB1);
        end
    endfunction

    function [15:0] absdiff16;
        input [15:0] a;
        input [15:0] b;
        begin
            if (a > b) absdiff16 = a - b;
            else       absdiff16 = b - a;
        end
    endfunction

    reg        t_valid   [0:MAX_T-1];
    reg [15:0] t_cx      [0:MAX_T-1];
    reg [15:0] t_cy      [0:MAX_T-1];
    reg [15:0] t_prev_cx [0:MAX_T-1];
    reg [7:0]  t_age     [0:MAX_T-1];
    reg [7:0]  t_miss    [0:MAX_T-1];

    reg t_cntA_LR [0:MAX_T-1];
    reg t_cntA_RL [0:MAX_T-1];
    reg t_cntB_LR [0:MAX_T-1];
    reg t_cntB_RL [0:MAX_T-1];

    reg [1:0]  state;
    reg [4:0]  scan_idx;
    reg [15:0] best_dist;
    reg [4:0]  best_idx;
    reg        best_found;
    reg [4:0]  free_idx;
    reg        free_found;

    reg [15:0] cur_cx;
    reg [15:0] cur_cy;
    reg [7:0]  cur_score;

    reg        pending_valid;
    reg [15:0] pending_cx;
    reg [15:0] pending_cy;
    reg [7:0]  pending_score;

    wire det_person_w;
    wire [15:0] scan_dx_w;
    wire [15:0] scan_dy_w;
    wire [15:0] scan_dist_w;
    wire [15:0] gate_r;

    assign det_person_w = det_valid && det_is_person;
    assign scan_dx_w = absdiff16(t_cx[scan_idx], cur_cx);
    assign scan_dy_w = absdiff16(t_cy[scan_idx], cur_cy);
    assign scan_dist_w = scan_dx_w + scan_dy_w;
    assign gate_r = GATE_R;

    always @(posedge clk) begin
        if (!rst_n || clear_counts) begin
            det_done <= 1'b0;
            det_track_valid <= 1'b0;
            det_track_new <= 1'b0;
            det_track_id <= 5'd0;

            state <= ST_IDLE;
            scan_idx <= 5'd0;
            best_dist <= 16'hFFFF;
            best_idx <= 5'd0;
            best_found <= 1'b0;
            free_idx <= 5'd0;
            free_found <= 1'b0;
            cur_cx <= 16'd0;
            cur_cy <= 16'd0;
            cur_score <= 8'd0;
            pending_valid <= 1'b0;
            pending_cx <= 16'd0;
            pending_cy <= 16'd0;
            pending_score <= 8'd0;

            count_A_LR <= 32'd0;
            count_A_RL <= 32'd0;
            count_B_LR <= 32'd0;
            count_B_RL <= 32'd0;

            for (i = 0; i < MAX_T; i = i + 1) begin
                t_valid[i] <= 1'b0;
                t_cx[i] <= 16'd0;
                t_cy[i] <= 16'd0;
                t_prev_cx[i] <= 16'd0;
                t_age[i] <= 8'd0;
                t_miss[i] <= 8'd0;
                t_cntA_LR[i] <= 1'b0;
                t_cntA_RL[i] <= 1'b0;
                t_cntB_LR[i] <= 1'b0;
                t_cntB_RL[i] <= 1'b0;
            end
        end else begin
            det_done <= 1'b0;
            det_track_valid <= 1'b0;
            det_track_new <= 1'b0;

            if (frame_tick) begin
                for (i = 0; i < MAX_T; i = i + 1) begin
                    if (t_valid[i]) begin
                        if (t_miss[i] < 8'hFF) t_miss[i] <= t_miss[i] + 8'd1;
                        if (t_age[i]  < 8'hFF) t_age[i]  <= t_age[i]  + 8'd1;
                        if (t_miss[i] >= MISS_MAX) begin
                            t_valid[i] <= 1'b0;
                        end
                    end
                end
            end

            // One-entry pending queue while the tracker scans the current detection.
            if (det_person_w) begin
                if ((state != ST_IDLE) && !pending_valid) begin
                    pending_valid <= 1'b1;
                    pending_cx <= det_cx;
                    pending_cy <= det_cy;
                    pending_score <= det_score;
                end else if ((state == ST_IDLE) && pending_valid) begin
                    // Pending item has priority for processing; keep one new item queued.
                    pending_valid <= 1'b1;
                    pending_cx <= det_cx;
                    pending_cy <= det_cy;
                    pending_score <= det_score;
                end
            end

            case (state)
                ST_IDLE: begin
                    if (pending_valid) begin
                        cur_cx <= pending_cx;
                        cur_cy <= pending_cy;
                        cur_score <= pending_score;
                        pending_valid <= 1'b0;
                        scan_idx <= 5'd0;
                        best_dist <= 16'hFFFF;
                        best_idx <= 5'd0;
                        best_found <= 1'b0;
                        free_idx <= 5'd0;
                        free_found <= 1'b0;
                        state <= ST_SCAN;
                    end else if (det_person_w) begin
                        cur_cx <= det_cx;
                        cur_cy <= det_cy;
                        cur_score <= det_score;
                        scan_idx <= 5'd0;
                        best_dist <= 16'hFFFF;
                        best_idx <= 5'd0;
                        best_found <= 1'b0;
                        free_idx <= 5'd0;
                        free_found <= 1'b0;
                        state <= ST_SCAN;
                    end
                end

                ST_SCAN: begin
                    if (t_valid[scan_idx]) begin
                        if (scan_dist_w < best_dist) begin
                            best_dist <= scan_dist_w;
                            best_idx <= scan_idx;
                            best_found <= 1'b1;
                        end
                    end else if (!free_found) begin
                        free_idx <= scan_idx;
                        free_found <= 1'b1;
                    end

                    if (scan_idx == (MAX_T-1)) begin
                        state <= ST_APPLY;
                    end else begin
                        scan_idx <= scan_idx + 5'd1;
                    end
                end

                ST_APPLY: begin
                    det_done <= 1'b1;

                    if (best_found && (best_dist <= gate_r)) begin
                        t_prev_cx[best_idx] <= t_cx[best_idx];
                        t_cx[best_idx] <= cur_cx;
                        t_cy[best_idx] <= cur_cy;
                        t_miss[best_idx] <= 8'd0;

                        det_track_valid <= 1'b1;
                        det_track_new <= 1'b0;
                        det_track_id <= best_idx;

                        if (t_age[best_idx] >= AGE_MIN) begin
                            if (in_zoneA(cur_cy)) begin
                                if ((t_cx[best_idx] < X_LINE) && (cur_cx >= X_LINE) && !t_cntA_LR[best_idx]) begin
                                    count_A_LR <= count_A_LR + 32'd1;
                                    t_cntA_LR[best_idx] <= 1'b1;
                                end
                                if ((t_cx[best_idx] > X_LINE) && (cur_cx <= X_LINE) && !t_cntA_RL[best_idx]) begin
                                    count_A_RL <= count_A_RL + 32'd1;
                                    t_cntA_RL[best_idx] <= 1'b1;
                                end
                            end

                            if (in_zoneB(cur_cy)) begin
                                if ((t_cx[best_idx] < X_LINE) && (cur_cx >= X_LINE) && !t_cntB_LR[best_idx]) begin
                                    count_B_LR <= count_B_LR + 32'd1;
                                    t_cntB_LR[best_idx] <= 1'b1;
                                end
                                if ((t_cx[best_idx] > X_LINE) && (cur_cx <= X_LINE) && !t_cntB_RL[best_idx]) begin
                                    count_B_RL <= count_B_RL + 32'd1;
                                    t_cntB_RL[best_idx] <= 1'b1;
                                end
                            end
                        end
                    end else if (free_found) begin
                        t_valid[free_idx] <= 1'b1;
                        t_cx[free_idx] <= cur_cx;
                        t_cy[free_idx] <= cur_cy;
                        t_prev_cx[free_idx] <= cur_cx;
                        t_age[free_idx] <= 8'd0;
                        t_miss[free_idx] <= 8'd0;
                        t_cntA_LR[free_idx] <= 1'b0;
                        t_cntA_RL[free_idx] <= 1'b0;
                        t_cntB_LR[free_idx] <= 1'b0;
                        t_cntB_RL[free_idx] <= 1'b0;

                        det_track_valid <= 1'b1;
                        det_track_new <= 1'b1;
                        det_track_id <= free_idx;
                    end

                    state <= ST_IDLE;
                end

                default: begin
                    state <= ST_IDLE;
                end
            endcase
        end
    end

endmodule
