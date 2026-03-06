`timescale 1ns/1ps

module motion_block_frontend #(
    parameter [15:0] FRAME_W = 16'd640,
    parameter [15:0] FRAME_H = 16'd480,
    parameter integer BX = 40,
    parameter integer BY = 30,
    parameter [7:0]  MOTION_THRESH = 8'd12,
    parameter integer BG_K = 4
)(
    input  wire       pclk,
    input  wire       rst_pclk_n,
    input  wire       cam_ok,
    input  wire       vsync,
    input  wire       href,
    input  wire [7:0] cam_d,
    input  wire       enable,
    output reg        frame_start_pulse,
    output reg        frame_end_pulse,
    output reg        blk_valid,
    output reg [7:0]  blk_bx,
    output reg [7:0]  blk_by,
    output reg [7:0]  blk_score
);
    localparam integer NBLK = BX*BY;
    integer ii;

    reg [1:0]  yuyv_sub;
    reg [11:0] x_pix;
    reg [10:0] y_line;
    reg vsync_d, href_d;
    wire href_fall = (href_d==1'b1 && href==1'b0);
    wire frame_start = (vsync_d==1'b1 && vsync==1'b0);
    wire frame_end   = (vsync_d==1'b0 && vsync==1'b1);
    wire y_is_valid = href && !vsync && ((yuyv_sub==2'd0) || (yuyv_sub==2'd2));
    wire [7:0] y_byte = cam_d;

    reg [15:0] sum_bx [0:BX-1];
    (* syn_ramstyle = "block_ram" *) reg [7:0] bg_mem [0:NBLK-1];

    function [7:0] abs8;
        input [7:0] a;
        input [7:0] b;
        begin abs8 = (a >= b) ? (a - b) : (b - a); end
    endfunction
    function signed [8:0] sdelta8;
        input [7:0] a;
        input [7:0] b;
        begin sdelta8 = $signed({1'b0,a}) - $signed({1'b0,b}); end
    endfunction

    wire [7:0] bx = x_pix[11:4];
    wire [7:0] by = y_line[10:4];
    wire [15:0] blk_idx = ({8'd0, by} * BX) + bx;

    always @(posedge pclk) begin
        if (!rst_pclk_n) begin
            vsync_d <= 1'b1;
            href_d <= 1'b0;
            yuyv_sub <= 2'd0;
            x_pix <= 12'd0;
            y_line <= 11'd0;
            frame_start_pulse <= 1'b0;
            frame_end_pulse <= 1'b0;
            blk_valid <= 1'b0;
            blk_bx <= 8'd0;
            blk_by <= 8'd0;
            blk_score <= 8'd0;
            for (ii=0; ii<BX; ii=ii+1) sum_bx[ii] <= 16'd0;
        end else begin
            frame_start_pulse <= 1'b0;
            frame_end_pulse <= 1'b0;
            blk_valid <= 1'b0;
            vsync_d <= vsync;
            href_d <= href;

            if (frame_start) begin
                frame_start_pulse <= 1'b1;
                yuyv_sub <= 2'd0;
                x_pix <= 12'd0;
                y_line <= 11'd0;
                for (ii=0; ii<BX; ii=ii+1) sum_bx[ii] <= 16'd0;
            end
            if (frame_end) frame_end_pulse <= 1'b1;

            if (!href || vsync) begin
                yuyv_sub <= 2'd0;
                x_pix <= 12'd0;
            end else begin
                yuyv_sub <= yuyv_sub + 2'd1;
                if (yuyv_sub == 2'd2) begin
                    if (x_pix < (FRAME_W - 2)) x_pix <= x_pix + 12'd2;
                    else x_pix <= 12'd0;
                end
            end

            if (href_fall) begin
                x_pix <= 12'd0;
                yuyv_sub <= 2'd0;
                if (y_line < (FRAME_H - 1)) y_line <= y_line + 11'd1;
                else y_line <= 11'd0;
            end

            if (enable && cam_ok && y_is_valid) begin
                if (bx < BX) sum_bx[bx] <= sum_bx[bx] + y_byte;
                if ((y_line[3:0] == 4'hF) && (x_pix[3:0] == 4'hE) && (yuyv_sub == 2'd2) && (bx < BX) && (by < BY)) begin
                    blk_bx <= bx;
                    blk_by <= by;
                    blk_score <= abs8(sum_bx[bx][15:8], bg_mem[blk_idx]);
                    blk_valid <= (abs8(sum_bx[bx][15:8], bg_mem[blk_idx]) > MOTION_THRESH);
                    bg_mem[blk_idx] <= bg_mem[blk_idx] + (sdelta8(sum_bx[bx][15:8], bg_mem[blk_idx]) >>> BG_K);
                    sum_bx[bx] <= 16'd0;
                end
            end
        end
    end
endmodule
