# SaturnAI Camera PCB

This folder contains the board design assets for the SaturnAI Camera custom
ECP5 + ESP32-S3 camera PCBA.

## Manufacturing Warning

The current PCB files are **not an orderable release**.

Rev 1.0 is the bring-up board used during development and has a known PCB/design
issue that will be fixed in the next revision. Do not send the current files
directly to fabrication or PCBA unless you intentionally want to reproduce the
bring-up board and debug it yourself.

If you want to build this board, contact me first so I can share the latest
revision status, known issue, and corrected ordering notes.

See `REV1_ERRATA.md` before using the PCB files. The short version is that Rev
1.0 demonstrated the architecture, but it also had real bring-up issues: an
assembled-board FPGA power short that required repair, paused microSD bring-up,
an unsupported ESP32-to-FPGA programming path, and an ESP32 reset-button issue.

## What The Board Is

The PCB is a compact embedded-vision platform with:

- Lattice ECP5 FPGA for DVP camera ingest, RGB565 conversion, detector logic,
  frame synchronization, and video transport.
- ESP32-S3 module for USB/serial bridge firmware, host communication, and future
  Wi-Fi/control features.
- OV-series DVP camera connector.
- External SDRAM interface for framebuffer/future pipeline work.
- FPGA-to-ESP32 6-lane GPIO video bus with strobe and frame gate.
- FPGA/ESP32 programming and debug access.
- On-board regulation, decoupling, boot/reset support, and bring-up test access.

## What You Need

For a corrected future revision, a build needs:

- The SaturnAI Camera PCB/PCBA files for the fixed revision.
- BOM-matching Lattice ECP5 FPGA.
- BOM-matching ESP32-S3 module.
- Compatible OV-series 8-bit DVP camera module/sensor.
- Matching camera flex cable, connector, and lens/focus hardware.
- BOM-matching external SDRAM.
- microSD card and populated SD-card parts if you want to use the FPGA SD
  logging/write experiments. The current USB/serial live preview does not need
  the SD card.
- Regulators, passives, damping resistors, connectors, buttons, LEDs, and
  programming/debug headers.
- FTDI/FT232 or compatible FPGA programmer supported by `openFPGALoader`.
- USB cable for ESP32-S3 flashing and serial preview.
- Multimeter, soldering/rework tools, and ideally an oscilloscope or logic
  analyzer for clock, reset, SDRAM, camera, and GPIO bring-up.
- Lattice Diamond, ESP-IDF, Python, and MSYS2/openFPGALoader on the host.

Check the PCB project and BOM before buying parts. The next revision may change
exact camera connector details, damping resistor options, power cleanup, or
test-access placement.

## Why The Board Uses These Parts

| Design choice | Rationale |
| --- | --- |
| Lattice ECP5 FPGA | The camera path needs deterministic pixel timing and hardware parallelism. The ECP5 has enough LUTs, EBRs, IO, PLLs, and routing for DVP capture, RGB conversion, frame packing, SDRAM experiments, overlays, and detector logic without jumping to a much larger FPGA family. |
| OV-series DVP camera | An 8-bit DVP camera exposes PCLK, VSYNC, HREF, and D[7:0], which makes it easier to route, probe, and debug than MIPI D-PHY on a first custom FPGA camera board. |
| External x16 SDRAM | Internal FPGA EBRs are not large enough for full-frame buffering. SDRAM gives a practical path toward line/frame buffers, burst transfers, camera/host decoupling, and future higher-resolution modes. |
| ESP32-S3 | The FPGA handles timing-critical image work while the ESP32-S3 handles USB/serial, Wi-Fi-capable control, debug/status packets, and host-side preview/control firmware. |
| 6-lane FPGA-to-ESP32 video bus | UART and simple SPI were too limiting for live video. The custom lane/strobe/frame-gate link gives the FPGA a simple source-synchronous-style output and gives the ESP32 a faster raw capture path. |
| UART control path | UART is kept for reliable low-speed mode control, telemetry, debug prints, and bring-up even when video uses the parallel bus. |
| SCCB/I2C camera config | OV sensors need register programming for resolution, pixel format, timing, JPEG/YUYV/RGB modes, and bring-up tuning. |
| 24 MHz camera clock | The camera needs a stable XCLK/MCLK. Supplying a known clock gives predictable camera timing for the FPGA capture domain. |
| CDC buffering | Camera PCLK, FPGA system logic, SDRAM, and ESP32 transfer timing are separate domains. CDC logic is required to avoid metastability and frame corruption. |
| YUYV/RGB565 first | Raw visible color formats made frame sync, byte phase, transport, and overlay bugs easier to see before attempting heavier JPEG or AI flows. |
| Tile/ROI acceleration | The FPGA can compute simple tile features, ROI masks, and overlays in parallel, reducing what the ESP32 or host has to process. |
| Series damping footprints | Optional 22-33 ohm source-side resistors give bring-up flexibility for PCLK, camera data, SDRAM, and FPGA-to-ESP32 signals if ringing or EMI needs tuning. |
| Return-path control and stitching | PCLK, SDRAM clock, DVP, and the FPGA-to-ESP32 bus need clean return current paths. Stitching and fencing help reduce loop area, crosstalk, and near-field EMI. |
| Separate power rails and local decoupling | The FPGA, camera, SDRAM, and ESP32 need different rails and fast local current. Separate regulation and local capacitors keep digital switching from corrupting timing or analog camera behavior. |
| SIwave/IBIS/PDN workflow | The layout was treated as an electrical system: DC-IR, PDN behavior, return paths, near-field EMI, and high-speed interfaces were reviewed instead of only checking schematic connectivity. |
| Debug/programming access | JTAG, UART, test points, boot/reset access, and observable clocks make Rev 1.0 bring-up possible without guessing whether an issue is PCB, firmware, FPGA logic, or camera configuration. |

## Current Files

- `Ai-Camera.eprj` - EasyEDA project database.
- `REV1_ERRATA.md` - known Rev 1.0 hardware issues and required fixes.
- `Ai-Camera_backup/` - historical EasyEDA backups.
- `altium/` - exported Altium project files.
- `Datasheets/` - local datasheets/pinout references used during layout.

## Bring-Up Status

Rev 1.0 has demonstrated the main camera/FPGA/ESP32 path:

- FPGA builds and flashes.
- ESP32-S3 builds and flashes.
- DVP camera capture works for true 160x120 preview.
- FPGA YUYV-to-RGB565 conversion works.
- FPGA-to-ESP32 packed GPIO video transport works.
- Serial localhost preview works.
- FPGA-side orange detector/overlay works.

Known remaining hardware/board work:

- Rev 1.0 has PCB/design issues that should be fixed before anyone orders the
  board. See `REV1_ERRATA.md`.
- SDRAM test infrastructure exists, but full SDRAM framebuffer use is still a
  bring-up/future-work item.
