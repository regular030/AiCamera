#include "cmd_protocol.h"

void fpga_make_cmd_packet(uint8_t opcode, uint32_t arg, uint8_t seq, uint8_t out_pkt[8]) {
    out_pkt[0] = FPGA_CMD_SYNC;
    out_pkt[1] = opcode;
    out_pkt[2] = (uint8_t)(arg & 0xFF);
    out_pkt[3] = (uint8_t)((arg >> 8) & 0xFF);
    out_pkt[4] = (uint8_t)((arg >> 16) & 0xFF);
    out_pkt[5] = (uint8_t)((arg >> 24) & 0xFF);
    out_pkt[6] = seq;
    out_pkt[7] = out_pkt[0] ^ out_pkt[1] ^ out_pkt[2] ^ out_pkt[3] ^ out_pkt[4] ^ out_pkt[5] ^ out_pkt[6];
}
