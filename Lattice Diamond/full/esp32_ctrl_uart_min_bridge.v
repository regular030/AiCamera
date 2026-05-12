`timescale 1ns/1ps

module esp32_ctrl_uart_min_bridge (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        rx,
    output wire        tx,
    input  wire [31:0] status_flags,
    output wire        status_pop_pulse,
    output wire        capture_enable,
    output wire [1:0]  mode,
    output wire [7:0]  frame_stride,
    output wire        clear_counts_pulse,
    output wire        snapshot_pulse
);
    localparam integer HEARTBEAT_TICKS = 32'd960000000; // 5 s at 192 MHz
    localparam [7:0] ACK_HEARTBEAT = 8'h84;

    wire [7:0]  rx_data;
    wire        rx_valid;
    wire        cmd_valid;
    wire [7:0]  cmd_opcode;
    wire [31:0] cmd_arg;
    wire [7:0]  cmd_seq;

    wire        reg_ack_valid;
    wire [7:0]  reg_ack_type;
    wire [31:0] reg_ack_value;
    wire [7:0]  reg_ack_seq;
    wire        reg_status_pop_pulse;

    wire        tx_pkt_valid;
    wire [7:0]  tx_pkt_data;
    wire        pkt_busy;
    wire        tx_busy;
    wire        tx_done;
    wire        tx_start = tx_pkt_valid & ~tx_busy;

    reg [31:0] hb_counter;
    reg        hb_pending;
    reg [7:0]  hb_seq;

    wire send_hb = hb_pending && !reg_ack_valid && !pkt_busy;
    wire merged_ack_valid = reg_ack_valid || send_hb;
    wire [7:0]  merged_ack_type  = reg_ack_valid ? reg_ack_type  : ACK_HEARTBEAT;
    wire [31:0] merged_ack_value = reg_ack_valid ? reg_ack_value : status_flags;
    wire [7:0]  merged_ack_seq   = reg_ack_valid ? reg_ack_seq   : hb_seq;

    assign status_pop_pulse = reg_status_pop_pulse || send_hb;

    always @(posedge clk) begin
        if (!rst_n) begin
            hb_counter <= 32'd0;
            hb_pending <= 1'b0;
            hb_seq     <= 8'd0;
        end else begin
            if (hb_counter == (HEARTBEAT_TICKS - 1)) begin
                hb_counter <= 32'd0;
                hb_pending <= 1'b1;
            end else begin
                hb_counter <= hb_counter + 32'd1;
            end

            if (send_hb) begin
                hb_pending <= 1'b0;
                hb_seq     <= hb_seq + 8'd1;
            end
        end
    end

    uart_rx u_rx (
        .clk(clk),
        .rst_n(rst_n),
        .rx(rx),
        .data_out(rx_data),
        .valid(rx_valid)
    );

    fpga_uart_cmd_parser u_cmd (
        .clk(clk),
        .rst_n(rst_n),
        .rx_data(rx_data),
        .rx_valid(rx_valid),
        .cmd_valid(cmd_valid),
        .cmd_opcode(cmd_opcode),
        .cmd_arg(cmd_arg),
        .cmd_seq(cmd_seq)
    );

    fpga_control_regs u_regs (
        .clk(clk),
        .rst_n(rst_n),
        .cmd_valid(cmd_valid),
        .cmd_opcode(cmd_opcode),
        .cmd_arg(cmd_arg),
        .cmd_seq(cmd_seq),
        .status_flags(status_flags),
        .status_pop_pulse(reg_status_pop_pulse),
        .capture_enable(capture_enable),
        .mode(mode),
        .frame_stride(frame_stride),
        .clear_counts_pulse(clear_counts_pulse),
        .snapshot_pulse(snapshot_pulse),
        .ack_valid(reg_ack_valid),
        .ack_type(reg_ack_type),
        .ack_value(reg_ack_value),
        .ack_seq(reg_ack_seq)
    );

    fpga_ack_packetizer u_ack (
        .clk(clk),
        .rst_n(rst_n),
        .ack_valid(merged_ack_valid),
        .ack_type(merged_ack_type),
        .ack_value(merged_ack_value),
        .ack_seq(merged_ack_seq),
        .tx_ready(~tx_busy),
        .tx_valid(tx_pkt_valid),
        .tx_data(tx_pkt_data),
        .busy(pkt_busy)
    );

    uart_tx u_tx (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(tx_pkt_data),
        .start(tx_start),
        .tx(tx),
        .busy(tx_busy),
        .done(tx_done)
    );
endmodule
