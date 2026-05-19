# Hardware And PCB Guide

SaturnAI Camera is a custom EasyEDA-designed ECP5 + ESP32-S3 camera PCBA. The
board is meant to combine the camera input, FPGA video pipeline, ESP32 host
bridge, external SDRAM, power, and debug/programming access onto one platform.

## Do Not Order Rev 1.0 Unchanged

Rev 1.0 is the board used for bring-up and demos, but it is not a manufacturing
release. It had real hardware issues and required repair.

Read:

```text
PCB/REV1_ERRATA.md
```

Known Rev 1.0 issues include:

- 1.1 V to 3.3 V assembled-board short around the FPGA/BGA area.
- repair technician involvement to recover the board.
- paused microSD path.
- unsupported ESP32-to-FPGA programming path on this revision.
- ESP32 reset-button behavior that required solder/rework attention.

## What You Need To Build/Test A Future Revision

For the corrected future revision, expect roughly:

- corrected SaturnAI Camera PCB/PCBA.
- Lattice ECP5 FPGA matching the BOM/footprint.
- ESP32-S3 module matching the BOM/footprint.
- compatible OV-series 8-bit DVP camera module.
- matching camera flex cable, connector, and lens/focus hardware.
- x16 SDRAM such as the W9825G6KH-class device used in bring-up.
- regulators, passives, decoupling capacitors, damping resistors, connectors,
  buttons, LEDs, and programming/debug headers.
- microSD card and populated socket parts only if using the SD logging path.
- FTDI/FT232-style FPGA programmer supported by `openFPGALoader`.
- USB cable for ESP32 flashing and serial preview.
- multimeter, soldering/rework tools, and ideally an oscilloscope or logic
  analyzer.

The exact BOM and PCB files should be checked before buying parts because Rev
1.0 is being revised.

## Why These Parts Were Chosen

| Design choice | Reason |
| --- | --- |
| Lattice ECP5 FPGA | Provides deterministic camera capture, enough IO, EBRs, LUTs, PLLs, CDC logic, and hardware parallelism for real image processing without jumping to a much larger FPGA family. |
| OV-series 8-bit DVP camera | DVP exposes PCLK, VSYNC, HREF, and D[7:0], making it easier to route, probe, and debug than MIPI D-PHY on a first custom board. |
| External SDRAM | Internal FPGA EBRs cannot hold full frames. SDRAM gives a path to frame/line buffering, burst access, and future higher-resolution pipelines. |
| ESP32-S3 | Handles system glue: USB/serial, Wi-Fi-capable control, status/debug reporting, and host/web-facing firmware. |
| Custom FPGA-to-ESP32 parallel bus | UART/SPI-only transfer was too limiting for video. The current link uses 6 data lanes, strobe, and frame gate. |
| UART/debug access | Low-speed control and telemetry are still useful even when video uses the faster parallel link. |
| Series damping footprints | Optional 22-33 ohm source-side resistors help tune ringing/EMI during bring-up. |
| Return-path control and stitching | High-activity clocks/buses need clean return current paths to reduce ringing, crosstalk, and near-field EMI. |
| Separate rails and local decoupling | FPGA core, IO, camera, SDRAM, and ESP32 loads require different rails and local transient-current support. |
| SIwave/IBIS/PDN workflow | The board was treated as an electrical system: DC-IR, PDN, return paths, near-field EMI, and interface behavior were reviewed. |

## SI/PI/EMI Notes

Board work included length matching, return-path planning, impedance-aware
routing, stitching, damping, and power-plane cleanup. Earlier SIwave iterations
reduced simulated near-field peaks from roughly 15 kV/m to under 350 V/m
E-field and roughly 1000 A/m to under 7 A/m H-field.

## Bring-Up Mindset

The first board proved the architecture, but it also proved why a custom PCBA
needs debug access. Treat power rails, clocks, reset, programming, camera
signals, SDRAM, and ESP32 communication as separate bring-up stages.
