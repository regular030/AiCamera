# Control Protocol

This document explains the current ESP32-to-FPGA command protocol that exists in the uploaded repo.

## Current flow

```text
HTTP request
   ↓
ESP32 handler in main.c
   ↓
fpga_make_cmd_packet(...)
   ↓
UART write from ESP32
   ↓
fpga_uart_cmd_parser.v
   ↓
fpga_control_regs.v
   ↓
fpga_ack_packetizer.v
   ↓
UART TX back from FPGA
```

## Command packet format

The current command packet is 8 bytes long:

```text
Byte 0: sync      = 0xA5
Byte 1: opcode
Byte 2: arg[7:0]
Byte 3: arg[15:8]
Byte 4: arg[23:16]
Byte 5: arg[31:24]
Byte 6: sequence
Byte 7: checksum  = XOR of bytes 0..6
```

This is defined in:
- `ESP32/main/cmd_protocol.c`
- `Lattice Diamond/fpga_uart_cmd_parser.v`

## Sync bytes
From `cmd_protocol.h`:
- command sync = `0xA5`
- ACK sync = `0xA6`

## Opcodes

Defined in `ESP32/main/cmd_protocol.h` and handled in `fpga_control_regs.v`:
- `0x01` = `PING`
- `0x10` = `SET_CAPTURE`
- `0x11` = `SET_MODE`
- `0x12` = `SET_STRIDE`
- `0x13` = `CLEAR_COUNTS`
- `0x14` = `SNAPSHOT`
- `0x20` = `GET_STATUS`

## What the FPGA currently does with them

### `PING`
Returns:
- `ACK_PONG`

### `SET_CAPTURE`
Updates:
- `capture_enable`

### `SET_MODE`
Updates:
- `mode`

### `SET_STRIDE`
Updates:
- `frame_stride`
- treats `0` as `1`

### `CLEAR_COUNTS`
Pulses:
- `clear_counts_pulse`

### `SNAPSHOT`
Pulses:
- `snapshot_pulse`

### `GET_STATUS`
Returns a packed status value containing:
- capture enable
- mode
- frame stride

## ACK types

From `fpga_control_regs.v`:
- `0x80` = `ACK_OK`
- `0x81` = `ACK_ERR`
- `0x82` = `ACK_STATUS`
- `0x83` = `ACK_PONG`

## Current HTTP mapping

From `ESP32/main/main.c`:
- `/ping`
- `/status`
- `/capture?enable=1`
- `/mode?value=0`
- `/stride?value=1`

Examples:
```bash
curl http://<esp32-ip>/ping
curl "http://<esp32-ip>/capture?enable=1"
curl "http://<esp32-ip>/mode?value=1"
curl "http://<esp32-ip>/stride?value=2"
```

## Why this protocol is small

The current protocol is intentionally lightweight because FPGA area matters.

That is why the current preferred path is:
- small UART RX/TX
- simple command packet
- simple control register layer
- simple ACK packet generation

Heavier telemetry and more elaborate protocol features can come later if the design budget allows.
