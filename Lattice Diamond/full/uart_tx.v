`timescale 1ns/1ps

module uart_tx #(
    parameter integer CLKS_PER_BIT = 1667
)(
    input  wire       clk,
    input  wire       rst_n,
    input  wire [7:0] data_in,
    input  wire       start,
    output reg        tx,
    output reg        busy,
    output reg        done
);
    localparam [1:0] ST_IDLE  = 2'd0;
    localparam [1:0] ST_START = 2'd1;
    localparam [1:0] ST_DATA  = 2'd2;
    localparam [1:0] ST_STOP  = 2'd3;

    localparam [15:0] CLKS_PER_BIT_M1 = CLKS_PER_BIT - 1;

    reg [1:0]  st;
    reg [15:0] clk_cnt;
    reg [2:0]  bit_idx;
    reg [7:0]  shreg;

    always @(posedge clk) begin
        if (!rst_n) begin
            st      <= ST_IDLE;
            clk_cnt <= 16'd0;
            bit_idx <= 3'd0;
            shreg   <= 8'd0;
            tx      <= 1'b1;
            busy    <= 1'b0;
            done    <= 1'b0;
        end else begin
            done <= 1'b0;

            case (st)
                ST_IDLE: begin
                    tx      <= 1'b1;
                    busy    <= 1'b0;
                    clk_cnt <= 16'd0;
                    bit_idx <= 3'd0;
                    if (start) begin
                        shreg <= data_in;
                        busy  <= 1'b1;
                        st    <= ST_START;
                    end
                end

                ST_START: begin
                    tx   <= 1'b0;
                    busy <= 1'b1;
                    if (clk_cnt == CLKS_PER_BIT_M1) begin
                        clk_cnt <= 16'd0;
                        st      <= ST_DATA;
                    end else begin
                        clk_cnt <= clk_cnt + 16'd1;
                    end
                end

                ST_DATA: begin
                    tx   <= shreg[bit_idx];
                    busy <= 1'b1;
                    if (clk_cnt == CLKS_PER_BIT_M1) begin
                        clk_cnt <= 16'd0;
                        if (bit_idx == 3'd7) begin
                            bit_idx <= 3'd0;
                            st      <= ST_STOP;
                        end else begin
                            bit_idx <= bit_idx + 3'd1;
                        end
                    end else begin
                        clk_cnt <= clk_cnt + 16'd1;
                    end
                end

                ST_STOP: begin
                    tx   <= 1'b1;
                    busy <= 1'b1;
                    if (clk_cnt == CLKS_PER_BIT_M1) begin
                        clk_cnt <= 16'd0;
                        done    <= 1'b1;
                        st      <= ST_IDLE;
                    end else begin
                        clk_cnt <= clk_cnt + 16'd1;
                    end
                end

                default: begin
                    st      <= ST_IDLE;
                    clk_cnt <= 16'd0;
                    bit_idx <= 3'd0;
                    shreg   <= 8'd0;
                    tx      <= 1'b1;
                    busy    <= 1'b0;
                    done    <= 1'b0;
                end
            endcase
        end
    end
endmodule