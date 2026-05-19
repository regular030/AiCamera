# Protocols And Data Formats

There are two important protocols in the current project:

1. FPGA to ESP32 packed GPIO video transport.
2. ESP32 to host USB/serial frame packets.

Older UART command/control code still exists in the repo, but it is not the main
live-preview path.

## FPGA To ESP32 Video Transport

The FPGA outputs true 160x120 RGB565 frames over a custom parallel GPIO link.

Current link shape:

- 6 data lanes.
- 1 strobe/clock line.
- 1 frame gate line.
- 3 symbols per RGB565 pixel.
- frame header before payload.
- row markers for resynchronization.

Why this exists:

- UART is too slow for live video.
- SPI experiments were unstable/expensive during bring-up.
- A simple parallel strobe bus is easy for the FPGA to generate.
- The ESP32 can sample GPIO registers directly.

The link is still software-captured by the ESP32, so the practical speed is
limited by ESP32 polling, row-locking, repair logic, and serial forwarding.

## ESP32 To Host Serial Frames

The ESP32 sends frame packets with a fixed 32-byte little-endian header:

```text
magic[8]       = "AICAMF1\0"
u16 width      = 160
u16 height     = 120
u16 format     = payload format
u16 header_len = 32
u32 frame_id
u32 payload_len
u32 capture_us
u32 gate_period_us
```

Known format IDs in firmware:

```text
0x0565 = RGB565 little-endian
0x0444 = packed RGB444
0x0332 = packed RGB332
```

The Python preview server accepts these packet types and converts them into a
browser preview.

## ESP32 Status Packets

Status packets use:

```text
magic[8] = "AICAMS1\0"
```

They include build/frame/status counters, capture timing, GPIO register samples,
valid-frame state, and row/sync diagnostics.

## Old UART Command Protocol

Older docs and source files refer to an 8-byte UART command packet:

```text
sync, opcode, u32 arg, sequence, checksum
```

That path was useful during earlier Wi-Fi/HTTP control work, but it is not the
current primary live-preview flow. Treat it as legacy/experimental unless you
are deliberately restoring the Wi-Fi command path.
