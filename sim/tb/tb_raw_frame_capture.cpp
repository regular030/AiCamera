#include "Vraw_frame_capture.h"
#include "verilated.h"
#include "verilated_vcd_c.h"

#include <cstdint>
#include <iomanip>
#include <iostream>
#include <vector>

static vluint64_t main_time = 0;
double sc_time_stamp() { return (double)main_time; }

static void tick(Vraw_frame_capture* top, VerilatedVcdC* tfp,
                 std::vector<uint16_t>& sdram_words,
                 bool& frame_ready_seen) {
    top->clk_sys = 0;
    top->pclk    = 0;
    top->eval();
    tfp->dump(main_time++);

    top->clk_sys = 1;
    top->pclk    = 1;
    top->eval();
    tfp->dump(main_time++);

    if (top->sdram_wr_valid && top->sdram_wr_ready) {
        sdram_words.push_back((uint16_t)top->sdram_wr_data);
    }

    if (top->frame_ready) {
        frame_ready_seen = true;
    }
}

static void send_line(Vraw_frame_capture* top, VerilatedVcdC* tfp,
                      std::vector<uint16_t>& sdram_words,
                      bool& frame_ready_seen,
                      const std::vector<uint8_t>& bytes) {
    top->href = 1;
    for (uint8_t b : bytes) {
        top->cam_d = b;
        tick(top, tfp, sdram_words, frame_ready_seen);
    }

    top->href = 0;
    top->cam_d = 0;
    tick(top, tfp, sdram_words, frame_ready_seen);
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);

    auto* top = new Vraw_frame_capture;
    auto* tfp = new VerilatedVcdC;
    top->trace(tfp, 99);
    tfp->open("raw_frame_capture.vcd");

    std::vector<uint16_t> sdram_words;
    bool frame_ready_seen = false;

    // -------------------------
    // Init inputs
    // -------------------------
    top->clk_sys         = 0;
    top->pclk            = 0;
    top->rst_sys_n       = 0;
    top->rst_pclk_n      = 0;
    top->vsync           = 1;   // idle high
    top->href            = 0;
    top->cam_d           = 0;
    top->cam_init_done   = 0;
    top->capture_enable  = 0;
    top->frame_stride    = 1;
    top->sdram_wr_ready  = 1;
    top->sdram_level_words = 0;

    // -------------------------
    // Reset
    // -------------------------
    for (int i = 0; i < 8; i++) {
        tick(top, tfp, sdram_words, frame_ready_seen);
    }

    top->rst_sys_n      = 1;
    top->rst_pclk_n     = 1;
    top->cam_init_done  = 1;
    top->capture_enable = 1;

    for (int i = 0; i < 4; i++) {
        tick(top, tfp, sdram_words, frame_ready_seen);
    }

    // -------------------------
    // Frame start: vsync 1 -> 0
    // -------------------------
    top->vsync = 0;
    tick(top, tfp, sdram_words, frame_ready_seen);

    // Small gap before active video
    tick(top, tfp, sdram_words, frame_ready_seen);

    // -------------------------
    // 4x2 test frame in YUYV
    // Y bytes captured should be:
    // 11 22 33 44 55 66 77 88
    // giving SDRAM words:
    // 0x2211 0x4433 0x6655 0x8877
    // -------------------------
    send_line(top, tfp, sdram_words, frame_ready_seen,
              {0x11, 0xAA, 0x22, 0xBB, 0x33, 0xCC, 0x44, 0xDD});

    tick(top, tfp, sdram_words, frame_ready_seen);

    send_line(top, tfp, sdram_words, frame_ready_seen,
              {0x55, 0xEE, 0x66, 0xFF, 0x77, 0x12, 0x88, 0x34});

    // -------------------------
    // Frame end: vsync 0 -> 1
    // -------------------------
    top->vsync = 1;
    top->href  = 0;
    top->cam_d = 0;
    tick(top, tfp, sdram_words, frame_ready_seen);

    // Let pclk pending + sys CDC settle
    for (int i = 0; i < 80; i++) {
        tick(top, tfp, sdram_words, frame_ready_seen);
    }

    tfp->close();

    // -------------------------
    // Report
    // -------------------------
    std::cout << "frame_ready_seen   = " << frame_ready_seen << "\n";
    std::cout << "frame_id           = " << (uint32_t)top->frame_id << "\n";
    std::cout << "payload_bytes      = " << (uint32_t)top->payload_bytes << "\n";
    std::cout << "frame_w            = " << (uint32_t)top->frame_w << "\n";
    std::cout << "frame_h            = " << (uint32_t)top->frame_h << "\n";
    std::cout << "stream_kind        = " << (uint32_t)top->stream_kind << "\n";
    std::cout << "sdram_words.size() = " << sdram_words.size() << "\n";

    std::cout << "Captured SDRAM words:\n";
    for (size_t i = 0; i < sdram_words.size(); i++) {
        std::cout << "  [" << i << "] = 0x"
                  << std::hex << std::setw(4) << std::setfill('0')
                  << sdram_words[i] << std::dec << "\n";
    }

    bool pass = true;

    if (!frame_ready_seen) {
        std::cout << "FAIL: frame_ready never asserted\n";
        pass = false;
    }
    if ((uint32_t)top->frame_id != 1) {
        std::cout << "FAIL: expected frame_id = 1, got "
                  << (uint32_t)top->frame_id << "\n";
        pass = false;
    }
    if ((uint32_t)top->payload_bytes != 8) {
        std::cout << "FAIL: expected payload_bytes = 8, got "
                  << (uint32_t)top->payload_bytes << "\n";
        pass = false;
    }
    if ((uint32_t)top->frame_w != 4 || (uint32_t)top->frame_h != 2) {
        std::cout << "FAIL: expected frame size 4x2, got "
                  << (uint32_t)top->frame_w << "x"
                  << (uint32_t)top->frame_h << "\n";
        pass = false;
    }
    if ((uint32_t)top->stream_kind != 2) {
        std::cout << "FAIL: expected stream_kind = 2, got "
                  << (uint32_t)top->stream_kind << "\n";
        pass = false;
    }

    if (sdram_words.size() != 4) {
        std::cout << "FAIL: expected 4 SDRAM words, got "
                  << sdram_words.size() << "\n";
        pass = false;
    } else {
        const uint16_t exp[4] = {0x2211, 0x4433, 0x6655, 0x8877};
        for (int i = 0; i < 4; i++) {
            if (sdram_words[i] != exp[i]) {
                std::cout << "FAIL: word[" << i << "] expected 0x"
                          << std::hex << exp[i] << ", got 0x"
                          << sdram_words[i] << std::dec << "\n";
                pass = false;
            }
        }
    }

    if (pass) {
        std::cout << "PASS: raw_frame_capture smoke test passed\n";
    }

    delete tfp;
    delete top;
    return pass ? 0 : 1;
}