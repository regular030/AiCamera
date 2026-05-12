`timescale 1ns/1ps

module fpga_debug_heartbeat_uart #(
    parameter integer CLK_HZ = 192000000,
    parameter integer BAUD = 115200,
    parameter integer HEARTBEAT_MS = 5000
)(
    input  wire clk,
    input  wire rst_n,
    input  wire cam_init_done,
    input  wire sd_ready,
    input  wire sd_err,
    input  wire raw_frame_ready,
    input  wire pack_frame_ready,
    input  wire sd_w_start,
    input  wire sd_w_done,
    output wire tx
);
    localparam integer CLKS_PER_BIT = CLK_HZ / BAUD;
    localparam integer HB_TICKS = (CLK_HZ / 1000) * HEARTBEAT_MS;

    reg [31:0] hb_cnt;
    reg cam_init_d, sd_ready_d, sd_err_d, raw_d, pack_d, sds_d, sdd_d;

    reg [7:0] ch0, ch1, ch2, ch3;
    reg [1:0] nbytes;
    reg [1:0] send_idx;
    reg send_pending;

    wire tx_busy;
    wire tx_done;
    reg  tx_start;
    reg [7:0] tx_data;

    wire hb_pulse = (hb_cnt == HB_TICKS - 1);

    uart_tx #(.CLKS_PER_BIT(CLKS_PER_BIT)) u_tx (
        .clk(clk), .rst_n(rst_n), .data_in(tx_data), .start(tx_start), .tx(tx), .busy(tx_busy), .done(tx_done)
    );

    task queue_msg;
        input [7:0] a;
        input [7:0] b;
        input [7:0] c;
        input [7:0] d;
        input [1:0] lenm1;
        begin
            if (!send_pending && !tx_busy) begin
                ch0 <= a;
                ch1 <= b;
                ch2 <= c;
                ch3 <= d;
                nbytes <= lenm1;
                send_idx <= 2'd0;
                send_pending <= 1'b1;
            end
        end
    endtask

    always @(posedge clk) begin
        if (!rst_n) begin
            hb_cnt <= 32'd0;
            cam_init_d <= 1'b0;
            sd_ready_d <= 1'b0;
            sd_err_d <= 1'b0;
            raw_d <= 1'b0;
            pack_d <= 1'b0;
            sds_d <= 1'b0;
            sdd_d <= 1'b0;
            send_pending <= 1'b0;
            send_idx <= 2'd0;
            nbytes <= 2'd0;
            tx_start <= 1'b0;
            tx_data <= 8'h00;
            ch0 <= 8'h00; ch1 <= 8'h00; ch2 <= 8'h00; ch3 <= 8'h00;
        end else begin
            tx_start <= 1'b0;

            if (hb_pulse) hb_cnt <= 32'd0;
            else hb_cnt <= hb_cnt + 32'd1;

            // queue the highest-priority new event when idle
            if (!send_pending && !tx_busy) begin
                if (cam_init_done && !cam_init_d)       queue_msg("C", "A", "M", "\n", 2'd3);
                else if (sd_ready && !sd_ready_d)       queue_msg("S", "R", "D", "\n", 2'd3);
                else if (sd_err && !sd_err_d)           queue_msg("E", "R", "R", "\n", 2'd3);
                else if (raw_frame_ready && !raw_d)     queue_msg("R", "A", "W", "\n", 2'd3);
                else if (pack_frame_ready && !pack_d)   queue_msg("P", "A", "K", "\n", 2'd3);
                else if (sd_w_start && !sds_d)          queue_msg("S", "D", "S", "\n", 2'd3);
                else if (sd_w_done && !sdd_d)           queue_msg("S", "D", "D", "\n", 2'd3);
                else if (hb_pulse)                      queue_msg("H", "B", "\n", 8'h00, 2'd2);
            end

            if (send_pending && !tx_busy) begin
                case (send_idx)
                    2'd0: tx_data <= ch0;
                    2'd1: tx_data <= ch1;
                    2'd2: tx_data <= ch2;
                    default: tx_data <= ch3;
                endcase
                tx_start <= 1'b1;
            end

            if (tx_done) begin
                if (send_idx == nbytes) begin
                    send_pending <= 1'b0;
                    send_idx <= 2'd0;
                end else begin
                    send_idx <= send_idx + 2'd1;
                end
            end

            cam_init_d <= cam_init_done;
            sd_ready_d <= sd_ready;
            sd_err_d <= sd_err;
            raw_d <= raw_frame_ready;
            pack_d <= pack_frame_ready;
            sds_d <= sd_w_start;
            sdd_d <= sd_w_done;
        end
    end
endmodule
