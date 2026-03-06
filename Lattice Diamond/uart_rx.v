`timescale 1ns/1ps

module uart_rx #(
    parameter integer CLKS_PER_BIT = 1667
)(
    input  wire clk,
    input  wire rst_n,
    input  wire rx,
    output reg  [7:0] data_out,
    output reg        valid
);
    localparam ST_IDLE  = 2'd0;
    localparam ST_START = 2'd1;
    localparam ST_DATA  = 2'd2;
    localparam ST_STOP  = 2'd3;

    reg [1:0] st;
    reg [15:0] clk_cnt;
    reg [2:0] bit_idx;
    reg [7:0] shreg;
    reg rx_s1, rx_s2;

    always @(posedge clk) begin
        if (!rst_n) begin
            rx_s1 <= 1'b1;
            rx_s2 <= 1'b1;
        end else begin
            rx_s1 <= rx;
            rx_s2 <= rx_s1;
        end
    end

    always @(posedge clk) begin
        if (!rst_n) begin
            st <= ST_IDLE;
            clk_cnt <= 16'd0;
            bit_idx <= 3'd0;
            shreg <= 8'd0;
            data_out <= 8'd0;
            valid <= 1'b0;
        end else begin
            valid <= 1'b0;
            case (st)
                ST_IDLE: begin
                    clk_cnt <= 16'd0;
                    bit_idx <= 3'd0;
                    if (rx_s2 == 1'b0) st <= ST_START;
                end
                ST_START: begin
                    if (clk_cnt == ((CLKS_PER_BIT-1)/2)) begin
                        if (rx_s2 == 1'b0) begin
                            clk_cnt <= 16'd0;
                            st <= ST_DATA;
                        end else begin
                            st <= ST_IDLE;
                        end
                    end else begin
                        clk_cnt <= clk_cnt + 16'd1;
                    end
                end
                ST_DATA: begin
                    if (clk_cnt == CLKS_PER_BIT-1) begin
                        clk_cnt <= 16'd0;
                        shreg[bit_idx] <= rx_s2;
                        if (bit_idx == 3'd7) begin
                            bit_idx <= 3'd0;
                            st <= ST_STOP;
                        end else begin
                            bit_idx <= bit_idx + 3'd1;
                        end
                    end else begin
                        clk_cnt <= clk_cnt + 16'd1;
                    end
                end
                ST_STOP: begin
                    if (clk_cnt == CLKS_PER_BIT-1) begin
                        clk_cnt <= 16'd0;
                        if (rx_s2 == 1'b1) begin
                            data_out <= shreg;
                            valid <= 1'b1;
                        end
                        st <= ST_IDLE;
                    end else begin
                        clk_cnt <= clk_cnt + 16'd1;
                    end
                end
                default: st <= ST_IDLE;
            endcase
        end
    end
endmodule
