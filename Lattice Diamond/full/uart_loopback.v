`timescale 1ns/1ps

module uart_loopback #(
    parameter integer CLKS_PER_BIT = 8
)(
    input  wire       clk,
    input  wire       rst_n,
    input  wire       start,
    input  wire [7:0] data_in,

    output wire       tx,
    output wire       tx_busy,
    output wire       tx_done,
    output wire       rx_valid,
    output wire [7:0] rx_data
);

    wire serial_line;

    assign tx = serial_line;

    uart_tx #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) u_tx (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(data_in),
        .start(start),
        .tx(serial_line),
        .busy(tx_busy),
        .done(tx_done)
    );

    uart_rx #(
        .CLKS_PER_BIT(CLKS_PER_BIT)
    ) u_rx (
        .clk(clk),
        .rst_n(rst_n),
        .rx(serial_line),
        .data_out(rx_data),
        .valid(rx_valid)
    );

endmodule