`timescale 1ns/1ps

module fpga_detection_packetizer (
    input  wire        clk,
    input  wire        rst_n,

    input  wire        det_valid,
    input  wire [31:0] frame_id,
    input  wire [7:0]  total_people,
    input  wire [7:0]  track_id,
    input  wire [7:0]  label_id,
    input  wire [7:0]  score_q8,
    input  wire [7:0]  x1_n,
    input  wire [7:0]  y1_n,
    input  wire [7:0]  x2_n,
    input  wire [7:0]  y2_n,

    input  wire        tx_ready,
    output reg         tx_valid,
    output reg  [7:0]  tx_data,
    output reg         busy,
    output reg         dropped_pulse
);

    localparam [7:0] SYNC_BYTE = 8'h5A;
    localparam [7:0] TYPE_DET  = 8'h30;

    reg [3:0] send_idx;
    reg [7:0] b0;
    reg [7:0] b1;
    reg [7:0] b2;
    reg [7:0] b3;
    reg [7:0] b4;
    reg [7:0] b5;
    reg [7:0] b6;
    reg [7:0] b7;
    reg [7:0] b8;
    reg [7:0] b9;
    reg [7:0] b10;
    reg [7:0] b11;
    reg [7:0] b12;
    reg [7:0] b13;
    reg [7:0] b14;

    function [7:0] byte_for_index;
        input [3:0] idx;
        begin
            case (idx)
                4'd0:  byte_for_index = b0;
                4'd1:  byte_for_index = b1;
                4'd2:  byte_for_index = b2;
                4'd3:  byte_for_index = b3;
                4'd4:  byte_for_index = b4;
                4'd5:  byte_for_index = b5;
                4'd6:  byte_for_index = b6;
                4'd7:  byte_for_index = b7;
                4'd8:  byte_for_index = b8;
                4'd9:  byte_for_index = b9;
                4'd10: byte_for_index = b10;
                4'd11: byte_for_index = b11;
                4'd12: byte_for_index = b12;
                4'd13: byte_for_index = b13;
                4'd14: byte_for_index = b14;
                default: byte_for_index = 8'h00;
            endcase
        end
    endfunction

    always @(posedge clk) begin
        if (!rst_n) begin
            tx_valid      <= 1'b0;
            tx_data       <= 8'h00;
            busy          <= 1'b0;
            send_idx      <= 4'd0;
            dropped_pulse <= 1'b0;
            b0  <= 8'h00; b1  <= 8'h00; b2  <= 8'h00; b3  <= 8'h00; b4  <= 8'h00;
            b5  <= 8'h00; b6  <= 8'h00; b7  <= 8'h00; b8  <= 8'h00; b9  <= 8'h00;
            b10 <= 8'h00; b11 <= 8'h00; b12 <= 8'h00; b13 <= 8'h00; b14 <= 8'h00;
        end else begin
            dropped_pulse <= 1'b0;

            if (!busy) begin
                tx_valid <= 1'b0;

                if (det_valid) begin
                    b0  <= SYNC_BYTE;
                    b1  <= TYPE_DET;
                    b2  <= frame_id[7:0];
                    b3  <= frame_id[15:8];
                    b4  <= frame_id[23:16];
                    b5  <= frame_id[31:24];
                    b6  <= total_people;
                    b7  <= track_id;
                    b8  <= label_id;
                    b9  <= score_q8;
                    b10 <= x1_n;
                    b11 <= y1_n;
                    b12 <= x2_n;
                    b13 <= y2_n;
                    b14 <= SYNC_BYTE ^ TYPE_DET ^ frame_id[7:0] ^ frame_id[15:8] ^ frame_id[23:16] ^ frame_id[31:24] ^
                           total_people ^ track_id ^ label_id ^ score_q8 ^ x1_n ^ y1_n ^ x2_n ^ y2_n;

                    busy     <= 1'b1;
                    send_idx <= 4'd0;
                    tx_valid <= 1'b1;
                    tx_data  <= SYNC_BYTE;
                end
            end else begin
                if (tx_valid && tx_ready) begin
                    if (send_idx == 4'd14) begin
                        busy     <= 1'b0;
                        tx_valid <= 1'b0;
                        send_idx <= 4'd0;
                    end else begin
                        send_idx <= send_idx + 4'd1;
                        tx_valid <= 1'b1;
                        tx_data  <= byte_for_index(send_idx + 4'd1);
                    end
                end

                if (det_valid && busy) begin
                    dropped_pulse <= 1'b1;
                end
            end
        end
    end
endmodule
