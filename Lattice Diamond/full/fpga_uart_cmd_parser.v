`timescale 1ns/1ps

module fpga_uart_cmd_parser (
    input  wire        clk,
    input  wire        rst_n,
    input  wire [7:0]  rx_data,
    input  wire        rx_valid,
    output reg         cmd_valid,
    output reg  [7:0]  cmd_opcode,
    output reg  [31:0] cmd_arg,
    output reg  [7:0]  cmd_seq
);
    localparam [7:0] SYNC = 8'hA5;

    reg [2:0] idx;
    reg [7:0] bytes [0:7];
    wire [7:0] chk_calc = bytes[0] ^ bytes[1] ^ bytes[2] ^ bytes[3] ^ bytes[4] ^ bytes[5] ^ bytes[6];

    integer i;
    always @(posedge clk) begin
        if (!rst_n) begin
            idx        <= 3'd0;
            cmd_valid  <= 1'b0;
            cmd_opcode <= 8'd0;
            cmd_arg    <= 32'd0;
            cmd_seq    <= 8'd0;
            for (i=0; i<8; i=i+1) bytes[i] <= 8'd0;
        end else begin
            cmd_valid <= 1'b0;
            if (rx_valid) begin
                case (idx)
                    3'd0: begin
                        if (rx_data == SYNC) begin
                            bytes[0] <= rx_data;
                            idx <= 3'd1;
                        end else begin
                            idx <= 3'd0;
                        end
                    end
                    3'd1: begin bytes[1] <= rx_data; idx <= 3'd2; end
                    3'd2: begin bytes[2] <= rx_data; idx <= 3'd3; end
                    3'd3: begin bytes[3] <= rx_data; idx <= 3'd4; end
                    3'd4: begin bytes[4] <= rx_data; idx <= 3'd5; end
                    3'd5: begin bytes[5] <= rx_data; idx <= 3'd6; end
                    3'd6: begin bytes[6] <= rx_data; idx <= 3'd7; end
                    3'd7: begin
                        bytes[7] <= rx_data;
                        if (chk_calc == rx_data) begin
                            cmd_valid  <= 1'b1;
                            cmd_opcode <= bytes[1];
                            cmd_arg    <= {bytes[5], bytes[4], bytes[3], bytes[2]};
                            cmd_seq    <= bytes[6];
                        end
                        idx <= 3'd0;
                    end
                    default: idx <= 3'd0;
                endcase
            end
        end
    end
endmodule
