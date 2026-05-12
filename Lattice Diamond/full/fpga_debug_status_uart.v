`timescale 1ns/1ps

module fpga_debug_status_uart #(
    parameter integer CLK_HZ = 24000000,
    parameter integer BAUD   = 115200
)(
    input  wire clk,
    input  wire rst_n,
    input  wire cap,
    input  wire rec,
    input  wire det,
    input  wire cam_init_done,
    input  wire sd_ready,
    input  wire sd_err,
    input  wire raw_frame_ready,
    input  wire sd_w_start,
    input  wire sd_w_busy,
    input  wire sd_w_done,
    output wire tx
);
    localparam integer BAUD_DIV = CLK_HZ / BAUD;

    // 1-second tick
    reg [31:0] sec_ctr = 32'd0;
    reg sec_tick = 1'b0;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sec_ctr <= 32'd0;
            sec_tick <= 1'b0;
        end else begin
            sec_tick <= 1'b0;
            if (sec_ctr == CLK_HZ - 1) begin
                sec_ctr <= 32'd0;
                sec_tick <= 1'b1;
            end else begin
                sec_ctr <= sec_ctr + 32'd1;
            end
        end
    end

    // Edge/latch sticky events so short pulses are visible
    reg raw_seen, sds_seen, sdd_seen;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            raw_seen <= 1'b0;
            sds_seen <= 1'b0;
            sdd_seen <= 1'b0;
        end else begin
            if (raw_frame_ready) raw_seen <= 1'b1;
            if (sd_w_start)      sds_seen <= 1'b1;
            if (sd_w_done)       sdd_seen <= 1'b1;
            if (sec_tick) begin
                raw_seen <= 1'b0;
                sds_seen <= 1'b0;
                sdd_seen <= 1'b0;
            end
        end
    end

    // UART TX core
    reg [15:0] baud_ctr = 16'd0;
    reg [3:0] bit_idx = 4'd0;
    reg [9:0] shreg = 10'h3FF;
    reg busy = 1'b0;
    reg tx_reg = 1'b1;
    reg start_req = 1'b0;
    reg [7:0] start_data = 8'h00;
    assign tx = tx_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            baud_ctr <= 16'd0;
            bit_idx <= 4'd0;
            shreg <= 10'h3FF;
            busy <= 1'b0;
            tx_reg <= 1'b1;
        end else begin
            if (!busy) begin
                tx_reg <= 1'b1;
                if (start_req) begin
                    shreg <= {1'b1, start_data, 1'b0};
                    busy <= 1'b1;
                    baud_ctr <= 16'd0;
                    bit_idx <= 4'd0;
                    tx_reg <= 1'b0;
                end
            end else if (baud_ctr == BAUD_DIV - 1) begin
                baud_ctr <= 16'd0;
                bit_idx <= bit_idx + 4'd1;
                shreg <= {1'b1, shreg[9:1]};
                tx_reg <= shreg[1];
                if (bit_idx == 4'd9) begin
                    busy <= 1'b0;
                    tx_reg <= 1'b1;
                end
            end else begin
                baud_ctr <= baud_ctr + 16'd1;
            end
        end
    end

    reg busy_d = 1'b0;
    wire busy_fall = busy_d && !busy;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) busy_d <= 1'b0;
        else busy_d <= busy;
    end

    // Send "C0 R0 D0 I0 S0 E0 W0 A0 B0 N0\r\n" once per second
    reg sending = 1'b0;
    reg [5:0] msg_idx = 6'd0;

    function [7:0] bit_ascii;
        input val;
        begin
            bit_ascii = val ? 8'h31 : 8'h30; // '1' / '0'
        end
    endfunction

    function [7:0] msg_byte;
        input [5:0] idx;
        begin
            case (idx)
                6'd0:  msg_byte = "C";
                6'd1:  msg_byte = bit_ascii(cap);
                6'd2:  msg_byte = " ";
                6'd3:  msg_byte = "R";
                6'd4:  msg_byte = bit_ascii(rec);
                6'd5:  msg_byte = " ";
                6'd6:  msg_byte = "D";
                6'd7:  msg_byte = bit_ascii(det);
                6'd8:  msg_byte = " ";
                6'd9:  msg_byte = "I";
                6'd10: msg_byte = bit_ascii(cam_init_done);
                6'd11: msg_byte = " ";
                6'd12: msg_byte = "S";
                6'd13: msg_byte = bit_ascii(sd_ready);
                6'd14: msg_byte = " ";
                6'd15: msg_byte = "E";
                6'd16: msg_byte = bit_ascii(sd_err);
                6'd17: msg_byte = " ";
                6'd18: msg_byte = "W";
                6'd19: msg_byte = bit_ascii(raw_seen);
                6'd20: msg_byte = " ";
                6'd21: msg_byte = "A";
                6'd22: msg_byte = bit_ascii(sds_seen);
                6'd23: msg_byte = " ";
                6'd24: msg_byte = "B";
                6'd25: msg_byte = bit_ascii(sd_w_busy);
                6'd26: msg_byte = " ";
                6'd27: msg_byte = "N";
                6'd28: msg_byte = bit_ascii(sdd_seen);
                6'd29: msg_byte = 8'h0D;
                6'd30: msg_byte = 8'h0A;
                default: msg_byte = 8'h00;
            endcase
        end
    endfunction

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sending <= 1'b0;
            msg_idx <= 6'd0;
            start_req <= 1'b0;
            start_data <= 8'h00;
        end else begin
            start_req <= 1'b0;
            if (!sending) begin
                if (sec_tick) begin
                    sending <= 1'b1;
                    msg_idx <= 6'd0;
                    start_data <= msg_byte(6'd0);
                    start_req <= 1'b1;
                end
            end else if (busy_fall) begin
                if (msg_idx == 6'd30) begin
                    sending <= 1'b0;
                end else begin
                    msg_idx <= msg_idx + 6'd1;
                    start_data <= msg_byte(msg_idx + 6'd1);
                    start_req <= 1'b1;
                end
            end
        end
    end

endmodule
