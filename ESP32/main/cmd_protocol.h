#pragma once
#include <stdint.h>

#define FPGA_CMD_SYNC 0xA5
#define FPGA_ACK_SYNC 0xA6

typedef enum {
    FPGA_OP_PING         = 0x01,
    FPGA_OP_SET_CAPTURE  = 0x10,
    FPGA_OP_SET_MODE     = 0x11,
    FPGA_OP_SET_STRIDE   = 0x12,
    FPGA_OP_CLEAR_COUNTS = 0x13,
    FPGA_OP_SNAPSHOT     = 0x14,
    FPGA_OP_GET_STATUS   = 0x20
} fpga_opcode_t;

void fpga_make_cmd_packet(uint8_t opcode, uint32_t arg, uint8_t seq, uint8_t out_pkt[8]);
