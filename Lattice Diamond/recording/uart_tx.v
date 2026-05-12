module uart_tx #(
    parameter integer CLK_HZ = 24000000,
    parameter integer BAUD   = 115200
) (
    input  wire clk,
    input  wire rst,
    input  wire valid,
    input  wire [7:0] data,
    output wire ready,
    output reg  tx
);
    localparam integer CLKS_PER_BIT = CLK_HZ / BAUD;
    reg [15:0] ctr;
    reg [3:0]  bit_idx;
    reg [9:0]  shreg;
    reg        busy;
    assign ready = !busy;

    always @(posedge clk) begin
        if (rst) begin
            ctr<=0; bit_idx<=0; shreg<=10'h3FF; busy<=0; tx<=1'b1;
        end else begin
            if (!busy) begin
                tx <= 1'b1;
                if (valid) begin
                    shreg <= {1'b1, data, 1'b0};
                    bit_idx <= 0;
                    ctr <= 0;
                    busy <= 1'b1;
                    tx <= 1'b0;
                end
            end else begin
                if (ctr == CLKS_PER_BIT-1) begin
                    ctr <= 0;
                    bit_idx <= bit_idx + 1'b1;
                    shreg <= {1'b1, shreg[9:1]};
                    tx <= shreg[1];
                    if (bit_idx == 4'd9) begin
                        busy <= 1'b0;
                        tx <= 1'b1;
                    end
                end else ctr <= ctr + 1'b1;
            end
        end
    end
endmodule
