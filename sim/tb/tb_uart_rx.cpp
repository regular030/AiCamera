// sim/tb/tb_uart_rx.cpp
#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vuart_rx.h"
#include <iostream>
#include <iomanip>
#include <cstdint>

static vluint64_t main_time = 0;
double sc_time_stamp() { return (double)main_time; }

static bool got_valid = false;
static uint8_t got_data = 0;

static void check_outputs(Vuart_rx* dut) {
    if (dut->valid) {
        got_valid = true;
        got_data = (uint8_t)dut->data_out;
        std::cout << "valid=1 data_out=0x"
                  << std::hex << std::uppercase
                  << std::setw(2) << std::setfill('0')
                  << (int)got_data << std::dec
                  << " at time " << main_time << "\n";
    }
}

static void tick(Vuart_rx* dut, VerilatedVcdC* tfp) {
    dut->clk = 0;
    dut->eval();
    check_outputs(dut);
    tfp->dump(main_time++);

    dut->clk = 1;
    dut->eval();
    check_outputs(dut);
    tfp->dump(main_time++);
}

static void tick_cycles(Vuart_rx* dut, VerilatedVcdC* tfp, int cycles) {
    for (int i = 0; i < cycles; i++) tick(dut, tfp);
}

static void send_bit(Vuart_rx* dut, VerilatedVcdC* tfp, int bit_val, int clks_per_bit) {
    dut->rx = bit_val ? 1 : 0;
    tick_cycles(dut, tfp, clks_per_bit);
}

static void send_byte(Vuart_rx* dut, VerilatedVcdC* tfp, uint8_t data, int clks_per_bit) {
    // idle before frame
    send_bit(dut, tfp, 1, clks_per_bit * 2);

    // start bit
    send_bit(dut, tfp, 0, clks_per_bit);

    // data bits LSB first
    for (int i = 0; i < 8; i++) {
        send_bit(dut, tfp, (data >> i) & 1, clks_per_bit);
    }

    // stop bit
    send_bit(dut, tfp, 1, clks_per_bit);

    // extra idle so waveform is easier to inspect
    send_bit(dut, tfp, 1, clks_per_bit * 4);
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);

    auto* dut = new Vuart_rx;
    auto* tfp = new VerilatedVcdC;

    Verilated::traceEverOn(true);
    dut->trace(tfp, 99);
    tfp->open("uart_rx.vcd");

    dut->clk = 0;
    dut->rst_n = 0;
    dut->rx = 1;
    dut->eval();

    tick_cycles(dut, tfp, 5);

    dut->rst_n = 1;
    tick_cycles(dut, tfp, 5);

    const int CLKS_PER_BIT = 8;
    const uint8_t TEST_BYTE = 0xA5;

    send_byte(dut, tfp, TEST_BYTE, CLKS_PER_BIT);

    // a few extra cycles
    tick_cycles(dut, tfp, 20);

    tfp->close();

    if (!got_valid) {
        std::cerr << "ERROR: valid never asserted\n";
        delete tfp;
        delete dut;
        return 1;
    }

    if (got_data != TEST_BYTE) {
        std::cerr << "ERROR: expected 0xA5, got 0x"
                  << std::hex << std::uppercase
                  << std::setw(2) << std::setfill('0')
                  << (int)got_data << std::dec << "\n";
        delete tfp;
        delete dut;
        return 1;
    }

    std::cout << "PASS: uart_rx received 0xA5 correctly\n";

    delete tfp;
    delete dut;
    return 0;
}