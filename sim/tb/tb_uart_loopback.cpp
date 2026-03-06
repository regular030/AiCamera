#include "Vuart_loopback.h"
#include "verilated.h"
#include "verilated_vcd_c.h"

#include <iostream>
#include <iomanip>
#include <cstdint>

static vluint64_t sim_time = 0;

double sc_time_stamp() {
    return sim_time;
}

static void tick(Vuart_loopback* top, VerilatedVcdC* tfp) {
    top->clk = 0;
    top->eval();
    tfp->dump(sim_time++);

    top->clk = 1;
    top->eval();
    tfp->dump(sim_time++);
}

static void send_byte(Vuart_loopback* top, VerilatedVcdC* tfp, uint8_t byte) {
    top->data_in = byte;
    top->start = 1;
    tick(top, tfp);

    top->start = 0;
}

static bool wait_for_rx(Vuart_loopback* top, VerilatedVcdC* tfp, uint8_t expected, int max_cycles) {
    for (int i = 0; i < max_cycles; i++) {
        tick(top, tfp);

        if (top->rx_valid) {
            std::cout << "rx_valid=1 data_out=0x"
                      << std::hex << std::uppercase
                      << std::setw(2) << std::setfill('0')
                      << (int)top->rx_data
                      << std::dec
                      << " at time " << sim_time << "\n";

            return (top->rx_data == expected);
        }
    }
    return false;
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);

    auto* top = new Vuart_loopback;
    auto* tfp = new VerilatedVcdC;

    top->trace(tfp, 99);
    tfp->open("uart_loopback.vcd");

    top->clk = 0;
    top->rst_n = 0;
    top->start = 0;
    top->data_in = 0x00;

    for (int i = 0; i < 5; i++) {
        tick(top, tfp);
    }

    top->rst_n = 1;
    for (int i = 0; i < 5; i++) {
        tick(top, tfp);
    }

    send_byte(top, tfp, 0xA5);

    // 10 UART bits total: start + 8 data + stop
    // Give extra margin
    bool ok1 = wait_for_rx(top, tfp, 0xA5, 200);

    if (!ok1) {
        std::cerr << "FAIL: loopback did not receive 0xA5 correctly\n";
        tfp->close();
        delete tfp;
        delete top;
        return 1;
    }

    for (int i = 0; i < 10; i++) {
        tick(top, tfp);
    }

    send_byte(top, tfp, 0x3C);
    bool ok2 = wait_for_rx(top, tfp, 0x3C, 200);

    if (!ok2) {
        std::cerr << "FAIL: loopback did not receive 0x3C correctly\n";
        tfp->close();
        delete tfp;
        delete top;
        return 1;
    }

    std::cout << "PASS: uart_loopback received 0xA5 and 0x3C correctly\n";

    for (int i = 0; i < 10; i++) {
        tick(top, tfp);
    }

    tfp->close();
    delete tfp;
    delete top;
    return 0;
}