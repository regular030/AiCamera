# Build and Simulation Guide

This guide covers:
- FPGA build flow with Lattice Diamond
- current generated outputs in the repo
- Verilator usage

## FPGA build flow

The current FPGA project lives in:
```text
Lattice Diamond/
```

### Main project file
Open:
```text
Lattice Diamond/AICAM.ldf
```

### Main constraints
- `AICAM.lpf`
- `timing.sdc`

### Main top-level
- `fpga_top.v`

## Typical FPGA workflow
1. open Diamond
2. open `AICAM.ldf`
3. edit RTL if needed
4. run synthesis
5. inspect utilization
6. run place and route
7. inspect timing and reports in `impl1/`

## Current generated outputs already present
The uploaded repo includes generated implementation outputs such as:
- `Lattice Diamond/impl1/`
- report HTML files
- netlists
- timing reports
- bitstream-related files

This means the repo is currently a working local project snapshot, not just clean source only.

---

## Verilator

Verilator is useful here for block-level and protocol-level debug before hardware bring-up.

### Suggested install on Ubuntu / WSL
```bash
sudo apt update
sudo apt install verilator gtkwave build-essential
```

### Good first modules to simulate
- `uart_tx.v`
- `uart_rx.v`
- `uart_loopback.v`
- `ov5640_sccb.v`
- `raw_frame_capture.v`
- `fpga_uart_cmd_parser.v`
- `fpga_control_regs.v`
- `fpga_ack_packetizer.v`
- `esp32_ctrl_uart_min_bridge.v`

### General command pattern
```bash
verilator -Wall --Wno-fatal --trace --timing \
  --cc "Lattice Diamond/<module>.v" \
  --top-module <module_name> \
  --exe sim/tb/<testbench>.cpp \
  --build -o sim_<module_name>
```

Then run:
```bash
./obj_dir/sim_<module_name>
```

Inspect VCDs with:
```bash
gtkwave <waveform>.vcd
```

---

## Existing simulation artifacts in repo

The uploaded repo currently contains artifacts such as:
- `obj_dir/`
- VCD output files

That means simulation/build outputs are already part of the project snapshot.

---

## Recommended simulation order

1. UART TX
2. UART RX
3. UART loopback
4. OV5640 SCCB init
5. raw frame capture
6. command parser
7. control registers
8. ACK packetizer
9. minimal bridge

Do not jump straight into giant all-in-one simulations if the leaf blocks are still uncertain.
