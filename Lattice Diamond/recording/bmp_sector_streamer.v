module bmp_sector_streamer #(
    parameter integer WIDTH = 640,
    parameter integer HEIGHT = 480,
    parameter integer FRAME_WORDS = 307200,
    parameter integer HEADER_BYTES = 66,
    parameter integer TOTAL_BYTES = 614466,
    parameter integer TOTAL_SECTORS = 1201
) (
    input  wire        clk,
    input  wire        rst,
    input  wire        sector_start,
    input  wire [10:0] sector_index,
    input  wire        byte_req,
    output reg  [7:0]  byte_data,
    output reg         byte_valid,
    output reg         sector_done,
    output reg         stream_done,
    output reg         rd_req,
    output reg  [21:0] rd_addr,
    input  wire        rd_ack,
    input  wire [15:0] rd_data
);
    reg active;
    reg [8:0] byte_idx;
    reg [31:0] global_byte;
    reg [31:0] pixel_byte_off;
    reg [21:0] word_idx;
    reg [15:0] word_hold;
    reg        word_hold_valid;
    reg        pending_read;

    function [7:0] header_byte;
        input [6:0] idx;
        begin
            header_byte = 8'h00;
            case (idx)
                7'd0:  header_byte = 8'h42;
                7'd1:  header_byte = 8'h4D;
                7'd2:  header_byte = 8'h62;
                7'd3:  header_byte = 8'h60;
                7'd4:  header_byte = 8'h09;
                7'd5:  header_byte = 8'h00;
                7'd6:  header_byte = 8'h00;
                7'd7:  header_byte = 8'h00;
                7'd8:  header_byte = 8'h00;
                7'd9:  header_byte = 8'h00;
                7'd10: header_byte = 8'h42;
                7'd11: header_byte = 8'h00;
                7'd12: header_byte = 8'h00;
                7'd13: header_byte = 8'h00;
                7'd14: header_byte = 8'h28;
                7'd15: header_byte = 8'h00;
                7'd16: header_byte = 8'h00;
                7'd17: header_byte = 8'h00;
                7'd18: header_byte = 8'h80;
                7'd19: header_byte = 8'h02;
                7'd20: header_byte = 8'h00;
                7'd21: header_byte = 8'h00;
                7'd22: header_byte = 8'h20;
                7'd23: header_byte = 8'hFE;
                7'd24: header_byte = 8'hFF;
                7'd25: header_byte = 8'hFF;
                7'd26: header_byte = 8'h01;
                7'd27: header_byte = 8'h00;
                7'd28: header_byte = 8'h10;
                7'd29: header_byte = 8'h00;
                7'd30: header_byte = 8'h03;
                7'd31: header_byte = 8'h00;
                7'd32: header_byte = 8'h00;
                7'd33: header_byte = 8'h00;
                7'd34: header_byte = 8'h00;
                7'd35: header_byte = 8'h60;
                7'd36: header_byte = 8'h09;
                7'd37: header_byte = 8'h00;
                7'd38: header_byte = 8'h13;
                7'd39: header_byte = 8'h0B;
                7'd40: header_byte = 8'h00;
                7'd41: header_byte = 8'h00;
                7'd42: header_byte = 8'h13;
                7'd43: header_byte = 8'h0B;
                7'd44: header_byte = 8'h00;
                7'd45: header_byte = 8'h00;
                7'd46: header_byte = 8'h00;
                7'd47: header_byte = 8'h00;
                7'd48: header_byte = 8'h00;
                7'd49: header_byte = 8'h00;
                7'd50: header_byte = 8'h00;
                7'd51: header_byte = 8'h00;
                7'd52: header_byte = 8'h00;
                7'd53: header_byte = 8'h00;
                7'd54: header_byte = 8'h00;
                7'd55: header_byte = 8'hF8;
                7'd56: header_byte = 8'h00;
                7'd57: header_byte = 8'h00;
                7'd58: header_byte = 8'hE0;
                7'd59: header_byte = 8'h07;
                7'd60: header_byte = 8'h00;
                7'd61: header_byte = 8'h00;
                7'd62: header_byte = 8'h1F;
                7'd63: header_byte = 8'h00;
                7'd64: header_byte = 8'h00;
                7'd65: header_byte = 8'h00;
                default: header_byte = 8'h00;
            endcase
        end
    endfunction

    always @(posedge clk) begin
        if (rst) begin
            active <= 1'b0;
            byte_idx <= 9'd0;
            global_byte <= 32'd0;
            byte_data <= 8'h00;
            byte_valid <= 1'b0;
            sector_done <= 1'b0;
            stream_done <= 1'b0;
            pixel_byte_off <= 32'd0;
            word_idx <= 22'd0;
            word_hold <= 16'h0000;
            word_hold_valid <= 1'b0;
            pending_read <= 1'b0;
            rd_req <= 1'b0;
            rd_addr <= 22'd0;
        end else begin
            byte_valid <= 1'b0;
            sector_done <= 1'b0;
            stream_done <= 1'b0;
            rd_req <= 1'b0;

            if (sector_start) begin
                active <= 1'b1;
                byte_idx <= 9'd0;
                global_byte <= {sector_index, 9'b0};
                word_hold_valid <= 1'b0;
                pending_read <= 1'b0;
            end

            if (pending_read && rd_ack) begin
                word_hold <= rd_data;
                word_hold_valid <= 1'b1;
                pending_read <= 1'b0;
            end

            if (active && byte_req) begin
                if (global_byte < HEADER_BYTES) begin
                    byte_data <= header_byte(global_byte[6:0]);
                    byte_valid <= 1'b1;
                    global_byte <= global_byte + 32'd1;
                    byte_idx <= byte_idx + 9'd1;
                end else if (global_byte < TOTAL_BYTES) begin
                    pixel_byte_off <= global_byte - HEADER_BYTES;
                    word_idx <= (global_byte - HEADER_BYTES) >> 1;
                    if (!word_hold_valid && !pending_read) begin
                        rd_addr <= ((global_byte - HEADER_BYTES) >> 1);
                        rd_req <= 1'b1;
                        pending_read <= 1'b1;
                    end else if (word_hold_valid) begin
                        if (((global_byte - HEADER_BYTES) & 32'd1) == 32'd0) begin
                            byte_data <= word_hold[7:0];
                        end else begin
                            byte_data <= word_hold[15:8];
                            word_hold_valid <= 1'b0;
                        end
                        byte_valid <= 1'b1;
                        global_byte <= global_byte + 32'd1;
                        byte_idx <= byte_idx + 9'd1;
                    end
                end else begin
                    byte_data <= 8'h00;
                    byte_valid <= 1'b1;
                    global_byte <= global_byte + 32'd1;
                    byte_idx <= byte_idx + 9'd1;
                end

                if (byte_valid && (byte_idx == 9'd511)) begin
                    sector_done <= 1'b1;
                    active <= 1'b0;
                    if (sector_index == (TOTAL_SECTORS - 1)) begin
                        stream_done <= 1'b1;
                    end
                end
            end
        end
    end
endmodule
