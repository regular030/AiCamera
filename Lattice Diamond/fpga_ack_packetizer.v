`timescale 1ns/1ps

module fpga_ack_packetizer (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        ack_valid,
    input  wire [7:0]  ack_type,
    input  wire [31:0] ack_value,
    input  wire [7:0]  ack_seq,
    input  wire        tx_ready,
    output reg         tx_valid,
    output reg  [7:0]  tx_data
);
    localparam [7:0] SYNC = 8'hA6;

    reg [7:0] pkt [0:7];
    reg [2:0] idx;
    reg       sending;

    wire [7:0] chk = SYNC ^ ack_type ^ ack_value[7:0] ^ ack_value[15:8] ^
                     ack_value[23:16] ^ ack_value[31:24] ^ ack_seq;

    integer i;
    always @(posedge clk) begin
        if (!rst_n) begin
            tx_valid <= 1'b0;
            tx_data  <= 8'd0;
            idx      <= 3'd0;
            sending  <= 1'b0;
            for (i=0; i<8; i=i+1) pkt[i] <= 8'd0;
        end else begin
            tx_valid <= 1'b0;
            if (ack_valid && !sending) begin
                pkt[0] <= SYNC;
                pkt[1] <= ack_type;
                pkt[2] <= ack_value[7:0];
                pkt[3] <= ack_value[15:8];
                pkt[4] <= ack_value[23:16];
                pkt[5] <= ack_value[31:24];
                pkt[6] <= ack_seq;
                pkt[7] <= chk;
                idx    <= 3'd0;
                sending<= 1'b1;
            end else if (sending && tx_ready) begin
                tx_valid <= 1'b1;
                tx_data  <= pkt[idx];
                if (idx == 3'd7) begin
                    idx     <= 3'd0;
                    sending <= 1'b0;
                end else begin
                    idx <= idx + 3'd1;
                end
            end
        end
    end
endmodule
