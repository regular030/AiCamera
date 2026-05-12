`timescale 1ns/1ps

module proposal_gen #(
    parameter integer BX = 40,
    parameter integer BY = 30,
    parameter integer N  = 16
)(
    input  wire             clk,
    input  wire             rst_n,
    input  wire             frame_start,
    input  wire             frame_end,
    input  wire             blk_valid,
    input  wire [7:0]       blk_bx,
    input  wire [7:0]       blk_by,
    input  wire [7:0]       blk_score,
    output reg              props_ready,
    output wire [N*8-1:0]   prop_score_flat,
    output wire [N*16-1:0]  prop_cx_flat,
    output wire [N*16-1:0]  prop_cy_flat
);
    integer i;
    integer scan_idx;
    reg [7:0] score_w [0:N-1];
    reg [7:0] bx_w    [0:N-1];
    reg [7:0] by_w    [0:N-1];
    reg [7:0] min_score;
    reg [4:0] min_idx;

    always @(*) begin
        min_score = score_w[0];
        min_idx = 5'd0;
        for (scan_idx = 1; scan_idx < N; scan_idx = scan_idx + 1) begin
            if (score_w[scan_idx] < min_score) begin
                min_score = score_w[scan_idx];
                min_idx = scan_idx[4:0];
            end
        end
    end

    always @(posedge clk) begin
        if (!rst_n) begin
            props_ready <= 1'b0;
            for (i = 0; i < N; i = i + 1) begin
                score_w[i] <= 8'd0;
                bx_w[i] <= 8'd0;
                by_w[i] <= 8'd0;
            end
        end else begin
            props_ready <= 1'b0;
            if (frame_start) begin
                for (i = 0; i < N; i = i + 1) begin
                    score_w[i] <= 8'd0;
                    bx_w[i] <= 8'd0;
                    by_w[i] <= 8'd0;
                end
            end
            if (blk_valid && (blk_score > min_score)) begin
                score_w[min_idx] <= blk_score;
                bx_w[min_idx] <= blk_bx;
                by_w[min_idx] <= blk_by;
            end
            if (frame_end) props_ready <= 1'b1;
        end
    end

    genvar gi;
    generate
        for (gi = 0; gi < N; gi = gi + 1) begin : PFLAT
            assign prop_score_flat[gi*8 +: 8] = score_w[gi];
            assign prop_cx_flat[gi*16 +: 16] = {4'd0, bx_w[gi], 4'b0000} + 16'd8;
            assign prop_cy_flat[gi*16 +: 16] = {4'd0, by_w[gi], 4'b0000} + 16'd8;
        end
    endgenerate
endmodule
