// sim/tb/tb_uart_tx.cpp
#include "Vuart_tx.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <iostream>
#include <bitset>

static vluint64_t sim_time = 0;

double sc_time_stamp() {
    return (double)sim_time;
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);

    Vuart_tx* top = new Vuart_tx;
    VerilatedVcdC* tfp = new VerilatedVcdC;

    Verilated::traceEverOn(true);
    top->trace(tfp, 99);
    tfp->open("uart_tx.vcd");

    auto tick = [&]() {
        top->clk = 0;
        top->eval();
        tfp->dump(sim_time++);

        top->clk = 1;
        top->eval();
        tfp->dump(sim_time++);
    };

    // init
    top->clk = 0;
    top->rst_n = 0;
    top->start = 0;
    top->data_in = 0x00;

    for (int i = 0; i < 10; i++) tick();

    // release reset
    top->rst_n = 1;
    for (int i = 0; i < 10; i++) tick();

    // send 0xA5
    top->data_in = 0xA5;
    top->start = 1;
    tick();
    top->start = 0;

    std::cout << "Started TX of 0xA5" << std::endl;

    // run long enough for full frame
    int max_cycles = 20000;
    bool saw_done = false;

    for (int i = 0; i < max_cycles; i++) {
        tick();

        if (top->done) {
            std::cout << "TX done at sim_time = " << sim_time << std::endl;
            saw_done = true;
            break;
        }
    }

    if (!saw_done) {
        std::cout << "ERROR: done never asserted" << std::endl;
    }

    tfp->close();
    delete tfp;
    delete top;
    return saw_done ? 0 : 1;
}