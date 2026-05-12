`timescale 1ns/1ps

module fpga_debug_uart_probe_tx #(
    parameter integer CLK_HZ = 24000000,
    parameter integer BAUD   = 115200
) (
    input  wire clk,
    input  wire rst_n,
    output reg  tx
);
    localparam integer CLKS_PER_BIT = CLK_HZ / BAUD;
    localparam integer ONE_SEC_TICKS = CLK_HZ;

    reg [31:0] sec_ctr;
    reg [15:0] bit_ctr;
    reg [3:0]  bit_idx;
    reg [1:0]  byte_idx;
    reg [7:0]  shreg;
    reg        busy;

    function [7:0] msg_byte;
        input [1:0] idx;
        begin
            case (idx)
                2'd0: msg_byte = 8'h48; // 'H'
                2'd1: msg_byte = 8'h42; // 'B'
                2'd2: msg_byte = 8'h0D; // '\r'
                default: msg_byte = 8'h0A; // '\n'
            endcase
        end
    endfunction

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            tx      <= 1'b1;
            sec_ctr <= 32'd0;
            bit_ctr <= 16'd0;
            bit_idx <= 4'd0;
            byte_idx<= 2'd0;
            shreg   <= 8'h00;
            busy    <= 1'b0;
        end else begin
            if (!busy) begin
                tx <= 1'b1;
                if (sec_ctr == ONE_SEC_TICKS - 1) begin
                    sec_ctr  <= 32'd0;
                    busy     <= 1'b1;
                    byte_idx <= 2'd0;
                    shreg    <= msg_byte(2'd0);
                    bit_idx  <= 4'd0;
                    bit_ctr  <= 16'd0;
                    tx       <= 1'b0; // start bit
                end else begin
                    sec_ctr <= sec_ctr + 32'd1;
                end
            end else begin
                if (bit_ctr == CLKS_PER_BIT - 1) begin
                    bit_ctr <= 16'd0;
                    bit_idx <= bit_idx + 4'd1;

                    case (bit_idx)
                        4'd0: tx <= shreg[0];
                        4'd1: tx <= shreg[1];
                        4'd2: tx <= shreg[2];
                        4'd3: tx <= shreg[3];
                        4'd4: tx <= shreg[4];
                        4'd5: tx <= shreg[5];
                        4'd6: tx <= shreg[6];
                        4'd7: tx <= shreg[7];
                        4'd8: tx <= 1'b1; // stop bit
                        4'd9: begin
                            if (byte_idx == 2'd3) begin
                                busy <= 1'b0;
                                tx   <= 1'b1;
                            end else begin
                                byte_idx <= byte_idx + 2'd1;
                                shreg    <= msg_byte(byte_idx + 2'd1);
                                bit_idx  <= 4'd0;
                                tx       <= 1'b0; // next start bit
                            end
                        end
                        default: tx <= 1'b1;
                    endcase
                end else begin
                    bit_ctr <= bit_ctr + 16'd1;
                end
            end
        end
    end
endmodule
