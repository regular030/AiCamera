# Project Structure

This document explains the actual current repo structure based on the uploaded project.

## Top level

```text
AiCamera/
├── Docs/
├── ESP32/
├── Lattice Diamond/
├── PCB/
├── ansys/
├── obj_dir/
├── .vscode/
├── README.md
├── LICENSE
├── .gitignore
└── .gitattributes
```

## `Docs/`
Documentation folder for setup, architecture, build flow, bring-up, and protocol notes.

## `ESP32/`
ESP-IDF firmware project for the ESP32-S3.

### Important files
- `CMakeLists.txt`  
  top-level ESP-IDF project entry
- `main/`  
  main firmware component
- `main/main.c`  
  Wi-Fi + HTTP + UART application
- `main/cmd_protocol.h`  
  packet opcode declarations
- `main/cmd_protocol.c`  
  packet builder implementation
- `main/wifi_profile.h`  
  active local Wi-Fi config
- `main/wifi_profile.h.example`  
  template Wi-Fi config
- `sdkconfig`  
  current ESP-IDF config
- `build/`  
  generated build output currently present in repo snapshot

## `Lattice Diamond/`
Main FPGA project area.

### Core project files
- `AICAM.ldf`  
  Diamond project file
- `AICAM.lpf`  
  pin constraints
- `timing.sdc`  
  timing constraints
- `fpga_top.v`  
  top-level RTL module

### Camera / input path
- `ov5640_sccb.v`
- `raw_frame_capture.v`

### Proposal / detection path
- `motion_block_frontend.v`
- `proposal_gen.v`
- `cropper_128_to_64.v`
- `cnn_scheduler.v`
- `cnn_int8_core.v`
- `candidate_bus.v`
- `track_count.v`
- `saturn_core.v`

### Buffering / logging
- `sdram_ctrl_simple.v`
- `frame_packer.v`
- `sd_spi_writer.v`

### Control path
- `uart_rx.v`
- `uart_tx.v`
- `uart_loopback.v`
- `fpga_uart_cmd_parser.v`
- `fpga_control_regs.v`
- `fpga_ack_packetizer.v`
- `esp32_ctrl_uart_min_bridge.v`

### Other control-related files present
These are in the repo but not the current preferred minimal path:
- `esp32_ctrl_uart_protocol_bridge.v`
- `fpga_detection_packetizer.v`
- `esp32_ctrl_spi.v`

### Generated / implementation outputs present
The uploaded repo also contains:
- `impl1/`
- PLL-generated folders
- reports
- intermediate netlists
- bitstreams
- Verilog/VHDL export artifacts

## `PCB/`
Board design area.

Contains:
- project file `Ai-Camera.eprj`
- backups of PCB revisions
- datasheets
- exported Altium data

## `ansys/`
SIwave / Ansys-related assets:
- SIwave database content
- IBIS files
- stackups and related setup content

## `obj_dir/`
Current Verilator-generated build output checked into the project snapshot.

## `.vscode/`
Local editor configuration files.

## Practical note

This repo currently mixes:
- source
- generated outputs
- tool artifacts
- project metadata

That is normal for an in-progress hardware repo, but it is important to know which files are source-of-truth and which are generated.
