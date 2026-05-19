# SaturnAI Camera Docs

This folder contains the project documentation for SaturnAI Camera. The root
`README.md` is the quick public overview; these files go deeper into setup,
hardware bring-up, firmware, FPGA RTL, protocols, and training tools.

## Recommended Reading Order

1. `GETTING_STARTED.md` - build/flash/preview workflow.
2. `HARDWARE_PCB_GUIDE.md` - PCB purpose, parts, design rationale, and Rev 1.0 warnings.
3. `PROJECT_STRUCTURE.md` - where current source, archived code, and generated files live.
4. `FPGA_RTL_GUIDE.md` - current FPGA video pipeline and detector path.
5. `ESP32_FIRMWARE_GUIDE.md` - current ESP32 GPIO capture and USB/serial bridge.
6. `CONTROL_PROTOCOL.md` - FPGA-to-ESP32 wire symbols and host serial packets.
7. `PYTHON_TOOLS_GUIDE.md` - localhost preview and orange-detector training tools.
8. `BUILD_AND_SIMULATION.md` - Diamond, ESP-IDF, Verilator, and SDRAM tests.
9. `BRINGUP_PLAN.md` - practical board bring-up order and Rev 1 lessons.

## Important Hardware Warning

Rev 1.0 is a repaired bring-up board, not an orderable release. Read
`../PCB/REV1_ERRATA.md` before using the PCB files. The current revision proved
the architecture, but it had hardware issues that must be fixed before another
fabrication/assembly run.

## Current Working System

The current working path is:

```text
OV-series DVP camera
  -> ECP5 FPGA YUYV capture and RGB565 conversion
  -> FPGA 160x120 frame generation
  -> FPGA tile-grid orange detector and overlay
  -> 6-lane packed GPIO stream to ESP32-S3
  -> ESP32 USB/serial frame packets
  -> Python localhost preview
```

The ESP32 Wi-Fi/HTTP code still exists in the firmware file, but the current
active bring-up path is the USB/serial preview because it removes Wi-Fi from the
main video-throughput bottleneck.
