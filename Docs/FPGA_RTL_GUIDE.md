# FPGA RTL Guide

This document explains the current FPGA architecture and what the major RTL files are doing.

## Top-level file

### `fpga_top.v`
This is the current main integration point.

It wires together:
- clocks and reset
- camera config
- camera ingest
- SDRAM path
- proposal and crop path
- classifier scheduling
- candidate/counting logic
- SD logging path
- UART control bridge

If you want to understand the live datapath, this is the best starting point.

---

## Clocking and reset

### `PLL/PLL.v`
Generated PLL block used for system clock generation.

### `reset_sync.v`
Reset synchronizer used to create:
- system reset
- PCLK-domain reset

This matters because the design spans at least:
- a system clock domain
- the camera PCLK domain

---

## Camera configuration

### `ov5640_sccb.v`
Performs OV5640 register initialization using SCCB.

Exposes:
- `init_done`
- `init_err`

Includes or depends on initialization ROM content.

This is the gatekeeper for the image path. Until it works, nothing downstream should be trusted.

---

## Frame ingest

### `raw_frame_capture.v`
Captures incoming camera data and feeds a system-side write path.

Its job includes:
- watching `VSYNC`, `HREF`, and pixel bytes
- selecting the Y data path
- handling frame and line progression
- pushing data toward the SDRAM-side path

This is one of the most important bring-up blocks in the design.

---

## Proposal and crop path

### `motion_block_frontend.v`
Computes coarse activity or motion-related block information.

### `proposal_gen.v`
Converts block-level scoring into candidate proposal regions.

### `cropper_128_to_64.v`
Converts selected proposals into fixed-size crop streams for the classifier path.

The big architectural idea is:
- do not classify everything
- reduce the scene first
- only spend classifier work on candidate regions

That is a good fit for a resource-limited FPGA.

---

## Classifier path

### `cnn_scheduler.v`
Controls the flow of crops into the compact classifier path and gathers scores.

### `cnn_int8_core.v`
INT8-oriented compact classifier core.

### `saturn_core.v`
Present in the repo as another core-related block; treat it as part of the model/processing experimentation space unless actively integrated into the current top-level.

This classifier path is intentionally small and fit-aware.

---

## Candidate / counting path

### `candidate_bus.v`
Aggregates proposal/crop/classifier outputs into candidate metadata and count-related state.

### `track_count.v`
Provides supporting logic for tracking/counting behavior.

This is where the project transitions from raw candidate classification to useful outputs like counts.

---

## Buffering and logging

### `sdram_ctrl_simple.v`
Current SDRAM interface block.

### `frame_packer.v`
Combines frame metadata and candidate/count information into a packed stream.

### `sd_spi_writer.v`
Drives the SD-card write path.

Logging matters because bring-up becomes much easier when the FPGA can export what it believes it saw.

---

## Control path

### `uart_rx.v`
UART receiver.

### `uart_tx.v`
UART transmitter.

### `uart_loopback.v`
Useful for isolated UART sanity testing.

### `fpga_uart_cmd_parser.v`
Parses the current 8-byte command packet format.

### `fpga_control_regs.v`
Maps parsed commands into control registers and emits ACK/status information.

### `fpga_ack_packetizer.v`
Builds outgoing ACK packets.

### `esp32_ctrl_uart_min_bridge.v`
Current lightweight control bridge tying together:
- UART RX
- command parser
- control registers
- ACK packetizer
- UART TX

This is the current preferred control path because it is lighter than the older protocol bridge.

### Files also present but not the preferred current path
- `esp32_ctrl_uart_protocol_bridge.v`
- `fpga_detection_packetizer.v`

These reflect earlier / heavier control and telemetry work but are not the current fit-first direction.

---

## Memory and data assets

The repo also includes memory files such as:
- `cnn_w1.memh`
- `cnn_b1.memh`
- `cnn_fcw.memh`
- `cnn_fcb.memh`
- `ov5640_1080p_yuyv.memh`
- `ov5640_vga_yuyv.memh`

These are useful for:
- initialized classifier weights/biases
- simulation and bring-up stimulus

---

## Practical way to read the RTL

Recommended order:
1. `fpga_top.v`
2. `ov5640_sccb.v`
3. `raw_frame_capture.v`
4. `motion_block_frontend.v`
5. `proposal_gen.v`
6. `cropper_128_to_64.v`
7. `cnn_scheduler.v`
8. `candidate_bus.v`
9. current control blocks
10. packing / SDRAM / SD path

That order follows the real flow of data and makes the project easier to understand.
