`timescale 1ns/1ps

module cnn_int8_core #(
    parameter integer IMG_W = 64,
    parameter integer IMG_H = 64,
    parameter integer C1    = 4,
    parameter integer SHIFT1   = 7,
    parameter integer SHIFT_FC = 7,
    parameter W1_FILE  = "cnn_w1.memh",
    parameter B1_FILE  = "cnn_b1.memh",
    parameter FCW_FILE = "cnn_fcw.memh",
    parameter FCB_FILE = "cnn_fcb.memh"
)(
    input  wire clk,
    input  wire rst_n,
    input  wire        in_start,
    input  wire        in_valid,
    input  wire [7:0]  in_data,
    input  wire        in_last,
    output reg         in_ready,
    input  wire        start,
    output reg         busy,
    output reg         done,
    output reg  [7:0]  score_out
);
    function [7:0] clamp_u8;
        input signed [31:0] x;
        begin
            if (x < 0) clamp_u8 = 8'd0;
            else if (x > 255) clamp_u8 = 8'd255;
            else clamp_u8 = x[7:0];
        end
    endfunction
    function signed [7:0] clamp_s8;
        input signed [31:0] x;
        begin
            if (x < -128) clamp_s8 = -128;
            else if (x > 127) clamp_s8 = 127;
            else clamp_s8 = x[7:0];
        end
    endfunction

    (* syn_ramstyle = "block_ram" *) reg [7:0] img_mem [0:4095];
    reg [11:0] img_wr;
    (* syn_ramstyle = "block_ram" *) reg signed [7:0] feat1_mem [0:(32*32*C1)-1];
    reg signed [7:0]  w1 [0:(C1*9)-1];
    reg signed [31:0] b1 [0:C1-1];
    reg signed [7:0]  fcw [0:C1-1];
    reg signed [31:0] fcb_mem [0:0];
    integer i;
    initial begin
        $readmemh(W1_FILE,  w1);
        $readmemh(B1_FILE,  b1);
        $readmemh(FCW_FILE, fcw);
        $readmemh(FCB_FILE, fcb_mem);
    end

    localparam ST_IDLE=0, ST_RECV=1, ST_WAITGO=2, ST_C1POOL=3, ST_GAPFC=4, ST_DONE=5;
    reg [2:0] st;
    reg [5:0] p1x, p1y;
    reg [3:0] c1o;
    reg [1:0] subpix;
    reg [3:0] kstep;
    reg [1:0] kx, ky;
    reg [6:0] cx, cy, ix, iy;
    reg signed [31:0] acc;
    reg signed [31:0] tmp1;
    reg signed [7:0]  act1;
    reg signed [7:0]  pool_max;
    reg [3:0]  gap_c;
    reg [9:0]  gap_idx;
    reg signed [15:0] gap_sum;
    reg signed [31:0] fc_acc;
    reg signed [31:0] fz;

    always @(posedge clk) begin
        if (!rst_n) begin
            st <= ST_IDLE;
            in_ready <= 1'b1;
            img_wr <= 12'd0;
            busy <= 1'b0;
            done <= 1'b0;
            score_out <= 8'd0;
            p1x <= 0; p1y <= 0; c1o <= 0;
            subpix <= 0; kstep <= 0; kx <= 0; ky <= 0; cx <= 0; cy <= 0; ix <= 0; iy <= 0;
            acc <= 0; tmp1 <= 0; act1 <= 0; pool_max <= -128; gap_c <= 0; gap_idx <= 0; gap_sum <= 0; fc_acc <= 0; fz <= 0;
        end else begin
            done <= 1'b0;
            case (st)
                ST_IDLE: begin
                    in_ready <= 1'b1;
                    img_wr <= 12'd0;
                    busy <= 1'b0;
                    if (in_start) st <= ST_RECV;
                end
                ST_RECV: begin
                    in_ready <= 1'b1;
                    if (in_valid) begin
                        img_mem[img_wr] <= in_data;
                        img_wr <= img_wr + 12'd1;
                        if (in_last) st <= ST_WAITGO;
                    end
                end
                ST_WAITGO: begin
                    in_ready <= 1'b0;
                    if (start) begin
                        busy <= 1'b1;
                        p1x <= 0; p1y <= 0; c1o <= 0; subpix <= 0; kstep <= 0; acc <= 0; pool_max <= -128;
                        st <= ST_C1POOL;
                    end
                end
                ST_C1POOL: begin
                    cx <= {p1x,1'b0} + subpix[0];
                    cy <= {p1y,1'b0} + subpix[1];
                    kx <= kstep[1:0];
                    ky <= kstep[3:2];
                    if (cx == 0) begin if (kx == 0) ix <= 0; else ix <= cx + kx - 1; end
                    else if (cx == 63) begin if (kx == 2) ix <= 63; else ix <= cx + kx - 1; end
                    else ix <= cx + kx - 1;
                    if (cy == 0) begin if (ky == 0) iy <= 0; else iy <= cy + ky - 1; end
                    else if (cy == 63) begin if (ky == 2) iy <= 63; else iy <= cy + ky - 1; end
                    else iy <= cy + ky - 1;
                    acc <= acc + $signed({1'b0, img_mem[{iy,6'd0}+ix]}) * w1[(c1o*9) + kstep];
                    if (kstep == 4'd8) begin
                        tmp1 <= (acc + b1[c1o]) >>> SHIFT1;
                        act1 <= clamp_s8(tmp1);
                        if (act1 < 0) act1 <= 0;
                        if (subpix == 0) pool_max <= act1;
                        else if (act1 > pool_max) pool_max <= act1;
                        acc <= 0;
                        kstep <= 0;
                        if (subpix == 2'd3) begin
                            feat1_mem[((p1y*32 + p1x)*C1) + c1o] <= pool_max;
                            pool_max <= -128;
                            subpix <= 0;
                            if (c1o == C1-1) begin
                                c1o <= 0;
                                if (p1x == 6'd31) begin
                                    p1x <= 0;
                                    if (p1y == 6'd31) begin
                                        p1y <= 0;
                                        gap_c <= 0;
                                        gap_idx <= 0;
                                        gap_sum <= 0;
                                        fc_acc <= fcb_mem[0];
                                        st <= ST_GAPFC;
                                    end else begin
                                        p1y <= p1y + 6'd1;
                                    end
                                end else begin
                                    p1x <= p1x + 6'd1;
                                end
                            end else begin
                                c1o <= c1o + 4'd1;
                            end
                        end else begin
                            subpix <= subpix + 2'd1;
                        end
                    end else begin
                        kstep <= kstep + 4'd1;
                    end
                end
                ST_GAPFC: begin
                    gap_sum <= gap_sum + feat1_mem[gap_idx*C1 + gap_c];
                    if (gap_idx == 10'd1023) begin
                        fz <= (gap_sum >>> 10) * fcw[gap_c];
                        fc_acc <= fc_acc + fz;
                        gap_sum <= 0;
                        gap_idx <= 0;
                        if (gap_c == C1-1) begin
                            score_out <= clamp_u8(fc_acc >>> SHIFT_FC);
                            busy <= 1'b0;
                            done <= 1'b1;
                            st <= ST_DONE;
                        end else begin
                            gap_c <= gap_c + 4'd1;
                        end
                    end else begin
                        gap_idx <= gap_idx + 10'd1;
                    end
                end
                ST_DONE: begin
                    st <= ST_IDLE;
                end
                default: st <= ST_IDLE;
            endcase
        end
    end
endmodule
