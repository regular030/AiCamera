`timescale 1ns/1ps

module esp32_ctrl_uart_min_bridge (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       rx,
    output wire       tx,
    output wire       capture_enable,
    output wire [1:0] mode,
    output wire [7:0] frame_stride,
    output wire       clear_counts_pulse,
    output wire       snapshot_pulse
);
    wire [7:0]  rx_data;
    wire        rx_valid;
    wire        cmd_valid;
    wire [7:0]  cmd_opcode;
    wire [31:0] cmd_arg;
    wire [7:0]  cmd_seq;
    wire        ack_valid;
    wire [7:0]  ack_type;
    wire [31:0] ack_value;
    wire [7:0]  ack_seq;
    wire        tx_pkt_valid;
    wire [7:0]  tx_pkt_data;
    wire        tx_busy;
    wire        tx_done;
    wire        tx_start = tx_pkt_valid & ~tx_busy;

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
        .capture_enable(capture_enable),
        .mode(mode),
        .frame_stride(frame_stride),
        .clear_counts_pulse(clear_counts_pulse),
        .snapshot_pulse(snapshot_pulse),
        .ack_valid(ack_valid),
        .ack_type(ack_type),
        .ack_value(ack_value),
        .ack_seq(ack_seq)
    );

    fpga_ack_packetizer u_ack (
        .clk(clk),
        .rst_n(rst_n),
        .ack_valid(ack_valid),
        .ack_type(ack_type),
        .ack_value(ack_value),
        .ack_seq(ack_seq),
        .tx_ready(~tx_busy),
        .tx_valid(tx_pkt_valid),
        .tx_data(tx_pkt_data)
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
