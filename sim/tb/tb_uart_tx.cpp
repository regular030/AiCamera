#include "Vuart_tx.h"
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <iostream>
#include <vector>
#include <cstdint>

static vluint64_t sim_time = 0;

static void tick(Vuart_tx* top, VerilatedVcdC* tfp) {
    top->clk = 0;
    top->eval();
    tfp->dump(sim_time++);

    top->clk = 1;
    top->eval();
    tfp->dump(sim_time++);
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);

    auto* top = new Vuart_tx;
    auto* tfp = new VerilatedVcdC;

    top->trace(tfp, 99);
    tfp->open("uart_tx.vcd");

    // init
    top->clk = 0;
    top->rst_n = 0;
    top->start = 0;
    top->data_in = 0x00;

    for (int i = 0; i < 4; i++) tick(top, tfp);

    // release reset
    top->rst_n = 1;
    for (int i = 0; i < 4; i++) tick(top, tfp);

    // send A5
    top->data_in = 0xA5;
    top->start = 1;
    tick(top, tfp);
    top->start = 0;

    // record tx once per full clock
    std::vector<int> tx_bits;
    std::vector<int> busy_bits;
    std::vector<int> done_bits;

    // enough cycles for start + 8 data + stop + margin
    for (int i = 0; i < 120; i++) {
        tick(top, tfp);
        tx_bits.push_back(top->tx);
        busy_bits.push_back(top->busy);
        done_bits.push_back(top->done);
    }

    tfp->close();

    // compress tx into runs of identical values, measured in clock cycles
    std::vector<std::pair<int,int>> runs;
    for (int b : tx_bits) {
        if (runs.empty() || runs.back().first != b) {
            runs.push_back({b, 1});
        } else {
            runs.back().second++;
        }
    }

    std::cout << "TX runs (value, clocks):\n";
    for (auto& r : runs) {
        std::cout << "  " << r.first << " for " << r.second << " clocks\n";
    }

    std::cout << "\nExpected for 0xA5 LSB-first:\n";
    std::cout << "start=0, data=1 0 1 0 0 1 0 1, stop=1\n\n";

    // Basic sanity checks
    bool saw_busy = false;
    bool saw_done = false;
    for (int b : busy_bits) if (b) saw_busy = true;
    for (int d : done_bits) if (d) saw_done = true;

    if (!saw_busy) {
        std::cerr << "ERROR: busy never asserted\n";
        return 1;
    }
    if (!saw_done) {
        std::cerr << "ERROR: done never pulsed\n";
        return 1;
    }

    std::cout << "PASS: busy asserted and done pulsed.\n";
    std::cout << "Open uart_tx.vcd in GTKWave and verify each bit is 8 clocks wide.\n";

    delete top;
    delete tfp;
    return 0;
}