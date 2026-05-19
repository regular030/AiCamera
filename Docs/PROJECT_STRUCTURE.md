# Project Structure

This is the current cleaned-up repo layout.

```text
AiCamera/
|-- Docs/                       Project documentation
|-- ESP32/                      ESP-IDF firmware for the ESP32-S3 bridge
|-- Lattice Diamond/recording/   Current FPGA RTL, constraints, and build scripts
|-- PCB/                        EasyEDA/Altium exports, datasheets, board docs
|-- ansys/, siwave/             SI/PI/EMI simulation assets
|-- scripts/                    Host preview and debug scripts
|-- sim/                        Verilator testbenches
|-- training/                   Orange-detector training tools
|-- archive/                    Old code, generated outputs, historical captures
|-- README.md
|-- LICENSE
`-- .gitignore
```

## Current Source Of Truth

Use these folders for active work:

- `Lattice Diamond/recording/` for FPGA RTL and build scripts.
- `ESP32/` for ESP32-S3 firmware.
- `scripts/` for the serial localhost preview and debug helpers.
- `training/box20/` for orange-detector data, labeling, training, and export.
- `PCB/` for board files, PCB notes, and Rev 1 errata.

## Archived Material

Old experiments and generated outputs were moved under `archive/`:

```text
archive/legacy-code/       Old imported/reference SDRAM/HUB75/etc. projects
archive/generated/         Old Verilator outputs, VCDs, logs, generated images
archive/datasets/          Historical captures and training data
archive/local-config/      Editor/local config moved out of the root
```

Archive files are kept for traceability, but new development should not use
them as the active source path.

## Key Active Files

FPGA:

- `Lattice Diamond/recording/fpga_top.v`
- `Lattice Diamond/recording/ov5640_sccb_init.v`
- `Lattice Diamond/recording/record.lpf`
- `Lattice Diamond/recording/run_capture_clean_export_tasks.tcl`
- `Lattice Diamond/recording/SDRAM_STRESS_TEST.md`

ESP32:

- `ESP32/main/main.c`
- `ESP32/main/upload.c`
- `ESP32/main/wifi_profile.h.example`
- `ESP32/main/idf_component.yml`

Host:

- `scripts/serial_preview_server.py`
- `scripts/read_sdram_stress.ps1`
- `scripts/read_sdram_sample_window.ps1`
- `scripts/read_sdram_read_return.ps1`

Training:

- `training/box20/capture_esp32_frames.py`
- `training/box20/label_frames_gui.py`
- `training/box20/train_box20.py`
- `training/box20/scan_box20.py`
