module uart_rx #(
    parameter integer CLK_HZ = 24000000,
    parameter integer BAUD   = 115200
) (
    input  wire clk,
    input  wire rst,
    input  wire rx,
    output reg  valid,
    output reg [7:0] data
);
    localparam integer CLKS_PER_BIT  = CLK_HZ / BAUD;
    localparam integer HALF_BIT_TICK = CLKS_PER_BIT / 2;
    reg [15:0] ctr;
    reg [3:0]  bit_idx;
    reg [7:0]  shreg;
    reg [1:0]  state;
    localparam S_IDLE=0, S_START=1, S_DATA=2, S_STOP=3;

    always @(posedge clk) begin
        if (rst) begin
            valid<=0; data<=0; ctr<=0; bit_idx<=0; shreg<=0; state<=S_IDLE;
        end else begin
            valid <= 1'b0;
            case (state)
                S_IDLE:  begin ctr<=0; bit_idx<=0; if (!rx) state<=S_START; end
                S_START: begin
                    if (ctr == HALF_BIT_TICK-1) begin
                        ctr <= 0;
                        if (!rx) state <= S_DATA;
                        else     state <= S_IDLE;
                    end else ctr <= ctr + 1'b1;
                end
                S_DATA: begin
                    if (ctr == CLKS_PER_BIT-1) begin
                        ctr <= 0;
                        shreg <= {rx, shreg[7:1]};
                        if (bit_idx == 4'd7) state <= S_STOP;
                        else bit_idx <= bit_idx + 1'b1;
                    end else ctr <= ctr + 1'b1;
                end
                S_STOP: begin
                    if (ctr == CLKS_PER_BIT-1) begin
                        ctr <= 0;
                        data <= shreg;
                        valid <= 1'b1;
                        state <= S_IDLE;
                    end else ctr <= ctr + 1'b1;
                end
                default: state <= S_IDLE;
            endcase
        end
    end
endmodule
