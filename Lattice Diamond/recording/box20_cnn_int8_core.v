`timescale 1ns/1ps

// Tiny 20x20 RGB565 CNN classifier.
//
// Network shape matches training/box20/train_box20.py:
//   RGB crop -> 3x3 int8 conv -> ReLU -> 2x2 maxpool -> global average -> FC
//
// This core is intentionally sequential. It uses one MAC datapath and processes
// one 20x20 tile after the tile has been loaded, keeping the camera PCLK path
// free of a wide multiplier chain.
module box20_cnn_int8_core #(
    parameter integer C1 = 16,
    parameter integer SHIFT1 = 7,
    parameter integer SHIFT_FC = 7,
    parameter [7:0] THRESHOLD = 8'd160,
    parameter W1_FILE  = "model_box20_cnn16_plus_neg300/cnn_w1.memh",
    parameter B1_FILE  = "model_box20_cnn16_plus_neg300/cnn_b1.memh",
    parameter FCW_FILE = "model_box20_cnn16_plus_neg300/cnn_fcw.memh",
    parameter FCB_FILE = "model_box20_cnn16_plus_neg300/cnn_fcb.memh"
)(
    input  wire        clk,
    input  wire        rst_n,

    input  wire        in_start,
    input  wire        in_valid,
    input  wire [15:0] in_rgb565_le,
    input  wire        in_last,
    output reg         in_ready,

    output reg         busy,
    output reg         done,
    output reg         hit,
    output reg  [7:0]  score_out
);
    localparam integer TILE_W = 20;
    localparam integer TILE_H = 20;
    localparam integer TILE_PIXELS = TILE_W * TILE_H;
    localparam integer POOL_W = 10;
    localparam integer POOL_H = 10;
    localparam integer W1_COUNT = C1 * 3 * 3 * 3;

    function [7:0] clamp_u8;
        input signed [31:0] x;
        begin
            if (x < 0) begin
                clamp_u8 = 8'd0;
            end else if (x > 255) begin
                clamp_u8 = 8'd255;
            end else begin
                clamp_u8 = x[7:0];
            end
        end
    endfunction

    function signed [7:0] relu7;
        input signed [31:0] x;
        begin
            if (x < 0) begin
                relu7 = 8'sd0;
            end else if (x > 127) begin
                relu7 = 8'sd127;
            end else begin
                relu7 = x[7:0];
            end
        end
    endfunction

    function [4:0] rgb565_le_r5;
        input [15:0] pix16;
        begin
            rgb565_le_r5 = pix16[7:3];
        end
    endfunction

    function [5:0] rgb565_le_g6;
        input [15:0] pix16;
        begin
            rgb565_le_g6 = {pix16[2:0], pix16[15:13]};
        end
    endfunction

    function [4:0] rgb565_le_b5;
        input [15:0] pix16;
        begin
            rgb565_le_b5 = pix16[12:8];
        end
    endfunction

    function [7:0] rgb565_le_chan8;
        input [15:0] pix16;
        input [1:0] chan;
        reg [4:0] r5;
        reg [5:0] g6;
        reg [4:0] b5;
        begin
            r5 = rgb565_le_r5(pix16);
            g6 = rgb565_le_g6(pix16);
            b5 = rgb565_le_b5(pix16);
            case (chan)
                2'd0: rgb565_le_chan8 = {r5, r5[4:2]};
                2'd1: rgb565_le_chan8 = {g6, g6[5:4]};
                default: rgb565_le_chan8 = {b5, b5[4:2]};
            endcase
        end
    endfunction

    function [4:0] clamp_kernel_coord;
        input [4:0] center;
        input [1:0] k;
        begin
            if (center == 5'd0 && k == 2'd0) begin
                clamp_kernel_coord = 5'd0;
            end else if (center == 5'd19 && k == 2'd2) begin
                clamp_kernel_coord = 5'd19;
            end else begin
                clamp_kernel_coord = center + {3'd0, k} - 5'd1;
            end
        end
    endfunction

    function [8:0] tile_addr;
        input [4:0] x;
        input [4:0] y;
        begin
            tile_addr = (y * 9'd20) + x;
        end
    endfunction

    function [15:0] w1_addr;
        input [4:0] oc;
        input [1:0] ic_in;
        input [1:0] ky_in;
        input [1:0] kx_in;
        begin
            w1_addr = (oc * 16'd27) + ({14'd0, ic_in} * 16'd9) +
                      ({14'd0, ky_in} * 16'd3) + {14'd0, kx_in};
        end
    endfunction

    // Approximate floor(x / 100) for 0..12700. This avoids a divider in the
    // classifier datapath and matches the trained GAP scaling closely enough.
    function signed [15:0] div100_approx;
        input signed [31:0] x;
        begin
            div100_approx = (x * 32'sd41) >>> 12;
        end
    endfunction

    (* syn_ramstyle = "block_ram" *) reg [15:0] tile_mem [0:TILE_PIXELS-1];
    reg signed [7:0]  w1 [0:W1_COUNT-1];
    reg signed [31:0] b1 [0:C1-1];
    reg signed [7:0]  fcw [0:C1-1];
    reg signed [31:0] fcb_mem [0:0];

    initial begin
        $readmemh(W1_FILE,  w1);
        $readmemh(B1_FILE,  b1);
        $readmemh(FCW_FILE, fcw);
        $readmemh(FCB_FILE, fcb_mem);
    end

    localparam [2:0] ST_IDLE = 3'd0;
    localparam [2:0] ST_RECV = 3'd1;
    localparam [2:0] ST_INIT = 3'd2;
    localparam [2:0] ST_MAC  = 3'd3;
    localparam [2:0] ST_DONE = 3'd4;

    reg [2:0] st;
    reg [8:0] wr_idx;
    reg [4:0] oc;
    reg [3:0] px;
    reg [3:0] py;
    reg [1:0] sub;
    reg [1:0] ic;
    reg [1:0] kx;
    reg [1:0] ky;
    reg [4:0] cx;
    reg [4:0] cy;
    reg [4:0] ix;
    reg [4:0] iy;
    reg signed [31:0] acc;
    reg signed [7:0] pool_max;
    reg signed [31:0] gap_sum;
    reg signed [31:0] fc_acc;

    wire [4:0] cx_next = {px, 1'b0} + {4'd0, sub[0]};
    wire [4:0] cy_next = {py, 1'b0} + {4'd0, sub[1]};
    wire [4:0] ix_next = clamp_kernel_coord(cx_next, kx);
    wire [4:0] iy_next = clamp_kernel_coord(cy_next, ky);
    wire [15:0] pix_word = tile_mem[tile_addr(ix_next, iy_next)];
    wire signed [8:0] pix_val = $signed({1'b0, rgb565_le_chan8(pix_word, ic)});
    wire signed [7:0] weight_val = w1[w1_addr(oc, ic, ky, kx)];
    wire signed [31:0] mac_term = pix_val * weight_val;
    wire signed [31:0] acc_next = acc + mac_term;
    wire signed [31:0] conv_scaled = (acc_next + b1[oc]) >>> SHIFT1;
    wire signed [7:0] act_next = relu7(conv_scaled);
    wire signed [7:0] pool_next = (act_next > pool_max) ? act_next : pool_max;
    wire signed [31:0] gap_sum_next = gap_sum + {{24{pool_next[7]}}, pool_next};
    wire signed [15:0] gap_val = div100_approx(gap_sum_next);
    wire signed [31:0] fc_acc_next = fc_acc + (gap_val * fcw[oc]);
    wire signed [31:0] score_raw = fc_acc_next >>> SHIFT_FC;
    wire [7:0] score_clamped = clamp_u8(score_raw);
    wire mac_last = (ic == 2'd2) && (ky == 2'd2) && (kx == 2'd2);
    wire pool_last = (sub == 2'd3);
    wire channel_last = (px == 4'd9) && (py == 4'd9);
    wire all_done = channel_last && (oc == (C1 - 1));

    always @(posedge clk) begin
        if (!rst_n) begin
            st <= ST_IDLE;
            wr_idx <= 9'd0;
            in_ready <= 1'b1;
            busy <= 1'b0;
            done <= 1'b0;
            hit <= 1'b0;
            score_out <= 8'd0;
            oc <= 5'd0;
            px <= 4'd0;
            py <= 4'd0;
            sub <= 2'd0;
            ic <= 2'd0;
            kx <= 2'd0;
            ky <= 2'd0;
            cx <= 5'd0;
            cy <= 5'd0;
            ix <= 5'd0;
            iy <= 5'd0;
            acc <= 32'sd0;
            pool_max <= 8'sd0;
            gap_sum <= 32'sd0;
            fc_acc <= 32'sd0;
        end else begin
            done <= 1'b0;
            case (st)
                ST_IDLE: begin
                    in_ready <= 1'b1;
                    busy <= 1'b0;
                    wr_idx <= 9'd0;
                    if (in_start) begin
                        st <= ST_RECV;
                    end
                end

                ST_RECV: begin
                    in_ready <= 1'b1;
                    if (in_valid) begin
                        tile_mem[wr_idx] <= in_rgb565_le;
                        if (in_last || wr_idx == (TILE_PIXELS - 1)) begin
                            st <= ST_INIT;
                            in_ready <= 1'b0;
                        end else begin
                            wr_idx <= wr_idx + 9'd1;
                        end
                    end
                end

                ST_INIT: begin
                    busy <= 1'b1;
                    oc <= 5'd0;
                    px <= 4'd0;
                    py <= 4'd0;
                    sub <= 2'd0;
                    ic <= 2'd0;
                    kx <= 2'd0;
                    ky <= 2'd0;
                    acc <= 32'sd0;
                    pool_max <= 8'sd0;
                    gap_sum <= 32'sd0;
                    fc_acc <= fcb_mem[0];
                    st <= ST_MAC;
                end

                ST_MAC: begin
                    cx <= cx_next;
                    cy <= cy_next;
                    ix <= ix_next;
                    iy <= iy_next;
                    if (mac_last) begin
                        acc <= 32'sd0;
                        ic <= 2'd0;
                        kx <= 2'd0;
                        ky <= 2'd0;

                        if (pool_last) begin
                            pool_max <= 8'sd0;
                            sub <= 2'd0;

                            if (channel_last) begin
                                gap_sum <= 32'sd0;
                                fc_acc <= fc_acc_next;
                                if (all_done) begin
                                    score_out <= score_clamped;
                                    hit <= (score_clamped >= THRESHOLD);
                                    busy <= 1'b0;
                                    done <= 1'b1;
                                    st <= ST_DONE;
                                end else begin
                                    oc <= oc + 5'd1;
                                    px <= 4'd0;
                                    py <= 4'd0;
                                end
                            end else begin
                                gap_sum <= gap_sum_next;
                                if (px == 4'd9) begin
                                    px <= 4'd0;
                                    py <= py + 4'd1;
                                end else begin
                                    px <= px + 4'd1;
                                end
                            end
                        end else begin
                            pool_max <= pool_next;
                            sub <= sub + 2'd1;
                        end
                    end else begin
                        acc <= acc_next;
                        if (kx == 2'd2) begin
                            kx <= 2'd0;
                            if (ky == 2'd2) begin
                                ky <= 2'd0;
                                ic <= ic + 2'd1;
                            end else begin
                                ky <= ky + 2'd1;
                            end
                        end else begin
                            kx <= kx + 2'd1;
                        end
                    end
                end

                ST_DONE: begin
                    st <= ST_IDLE;
                    in_ready <= 1'b1;
                end

                default: begin
                    st <= ST_IDLE;
                end
            endcase
        end
    end
endmodule
