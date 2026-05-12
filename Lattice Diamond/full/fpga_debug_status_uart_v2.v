`timescale 1ns/1ps

module fpga_debug_status_uart_v2 #(
    parameter integer CLK_HZ = 24000000,
    parameter integer BAUD   = 115200
)(
    input  wire clk,
    input  wire rst_n,
    input  wire cap,
    input  wire rec,
    input  wire det,
    input  wire cam_init_done,
    input  wire vsync_seen,
    input  wire href_seen,
    input  wire pclk_seen,
    input  wire frame_tick_seen,
    input  wire wr_valid_seen,
    input  wire sdram_nonzero,
    input  wire frame_id_lsb,
    input  wire sd_ready,
    input  wire sd_err,
    input  wire raw_frame_ready,
    input  wire sd_w_start,
    input  wire sd_w_busy,
    input  wire sd_w_done,
    output wire tx
);
    localparam integer BAUD_DIV = CLK_HZ / BAUD;

    reg [31:0] sec_ctr = 32'd0;
    reg        sec_tick = 1'b0;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sec_ctr  <= 32'd0;
            sec_tick <= 1'b0;
        end else begin
            sec_tick <= 1'b0;
            if (sec_ctr == CLK_HZ - 1) begin
                sec_ctr  <= 32'd0;
                sec_tick <= 1'b1;
            end else begin
                sec_ctr <= sec_ctr + 32'd1;
            end
        end
    end

    reg [15:0] baud_ctr = 16'd0;
    reg [3:0]  bit_idx  = 4'd0;
    reg [9:0]  shreg    = 10'h3FF;
    reg        busy     = 1'b0;
    reg        tx_reg   = 1'b1;

    reg        start_req = 1'b0;
    reg [7:0]  start_data = 8'h00;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            baud_ctr <= 16'd0;
            bit_idx  <= 4'd0;
            shreg    <= 10'h3FF;
            busy     <= 1'b0;
            tx_reg   <= 1'b1;
        end else begin
            if (!busy) begin
                tx_reg <= 1'b1;
                if (start_req) begin
                    shreg    <= {1'b1, start_data, 1'b0};
                    busy     <= 1'b1;
                    baud_ctr <= 16'd0;
                    bit_idx  <= 4'd0;
                    tx_reg   <= 1'b0;
                end
            end else begin
                if (baud_ctr == BAUD_DIV - 1) begin
                    baud_ctr <= 16'd0;
                    bit_idx  <= bit_idx + 4'd1;
                    shreg    <= {1'b1, shreg[9:1]};
                    tx_reg   <= shreg[1];
                    if (bit_idx == 4'd9) begin
                        busy   <= 1'b0;
                        tx_reg <= 1'b1;
                    end
                end else begin
                    baud_ctr <= baud_ctr + 16'd1;
                end
            end
        end
    end

    assign tx = tx_reg;

    reg sending = 1'b0;
    reg [6:0] msg_idx = 7'd0;
    reg busy_d = 1'b0;
    wire busy_fall = busy_d && !busy;

    function [7:0] bchr;
        input val;
        begin
            bchr = val ? 8'h31 : 8'h30;
        end
    endfunction

    function [7:0] msg_byte;
        input [6:0] idx;
        begin
            case (idx)
                7'd0:  msg_byte = 8'h59; // Y sentinel proves v2 helper is loaded
                7'd1:  msg_byte = 8'h20;
                7'd2:  msg_byte = 8'h43; // C
                7'd3:  msg_byte = bchr(cap);
                7'd4:  msg_byte = 8'h20;
                7'd5:  msg_byte = 8'h52; // R
                7'd6:  msg_byte = bchr(rec);
                7'd7:  msg_byte = 8'h20;
                7'd8:  msg_byte = 8'h44; // D
                7'd9:  msg_byte = bchr(det);
                7'd10: msg_byte = 8'h20;
                7'd11: msg_byte = 8'h49; // I
                7'd12: msg_byte = bchr(cam_init_done);
                7'd13: msg_byte = 8'h20;
                7'd14: msg_byte = 8'h56; // V
                7'd15: msg_byte = bchr(vsync_seen);
                7'd16: msg_byte = 8'h20;
                7'd17: msg_byte = 8'h48; // H
                7'd18: msg_byte = bchr(href_seen);
                7'd19: msg_byte = 8'h20;
                7'd20: msg_byte = 8'h50; // P
                7'd21: msg_byte = bchr(pclk_seen);
                7'd22: msg_byte = 8'h20;
                7'd23: msg_byte = 8'h46; // F frame_tick_sys seen
                7'd24: msg_byte = bchr(frame_tick_seen);
                7'd25: msg_byte = 8'h20;
                7'd26: msg_byte = 8'h51; // Q raw_sdram_wr_valid seen
                7'd27: msg_byte = bchr(wr_valid_seen);
                7'd28: msg_byte = 8'h20;
                7'd29: msg_byte = 8'h4C; // L sdram_level_words != 0
                7'd30: msg_byte = bchr(sdram_nonzero);
                7'd31: msg_byte = 8'h20;
                7'd32: msg_byte = 8'h59; // Y raw_frame_id[0]
                7'd33: msg_byte = bchr(frame_id_lsb);
                7'd34: msg_byte = 8'h20;
                7'd35: msg_byte = 8'h53; // S
                7'd36: msg_byte = bchr(sd_ready);
                7'd37: msg_byte = 8'h20;
                7'd38: msg_byte = 8'h45; // E
                7'd39: msg_byte = bchr(sd_err);
                7'd40: msg_byte = 8'h20;
                7'd41: msg_byte = 8'h57; // W
                7'd42: msg_byte = bchr(raw_frame_ready);
                7'd43: msg_byte = 8'h20;
                7'd44: msg_byte = 8'h41; // A
                7'd45: msg_byte = bchr(sd_w_start);
                7'd46: msg_byte = 8'h20;
                7'd47: msg_byte = 8'h42; // B
                7'd48: msg_byte = bchr(sd_w_busy);
                7'd49: msg_byte = 8'h20;
                7'd50: msg_byte = 8'h4E; // N
                7'd51: msg_byte = bchr(sd_w_done);
                7'd52: msg_byte = 8'h0D;
                7'd53: msg_byte = 8'h0A;
                default: msg_byte = 8'h00;
            endcase
        end
    endfunction

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            start_req  <= 1'b0;
            start_data <= 8'h00;
            sending    <= 1'b0;
            msg_idx    <= 7'd0;
            busy_d     <= 1'b0;
        end else begin
            busy_d    <= busy;
            start_req <= 1'b0;
            if (!sending) begin
                if (sec_tick) begin
                    sending    <= 1'b1;
                    msg_idx    <= 7'd0;
                    start_data <= msg_byte(7'd0);
                    start_req  <= 1'b1;
                end
            end else if (busy_fall) begin
                if (msg_idx == 7'd53) begin
                    sending <= 1'b0;
                end else begin
                    msg_idx    <= msg_idx + 7'd1;
                    start_data <= msg_byte(msg_idx + 7'd1);
                    start_req  <= 1'b1;
                end
            end
        end
    end
endmodule
