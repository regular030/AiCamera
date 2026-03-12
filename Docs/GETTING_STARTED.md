# Getting Started

This guide explains how to get the current AiCamera project opened, built, and understood.

## 1. Clone the repo

```bash
git clone <your-repo-url>
cd AiCamera
```

## 2. Learn the repo layout first

Before building anything, know where the main work lives:
- `Lattice Diamond/` = FPGA project
- `ESP32/` = ESP-IDF firmware project
- `PCB/` = board design files
- `ansys/` = SI/PI/EMI-related assets
- `Docs/` = documentation

## 3. FPGA prerequisites

Install:
- Lattice Diamond
- a waveform viewer if you want simulation or report inspection
- Verilator + GTKWave if you want HDL simulation outside Diamond

### Open the FPGA project
Use:
```text
Lattice Diamond/AICAM.ldf
```

## 4. ESP32 prerequisites

Install ESP-IDF and make sure `idf.py` works in your shell.

Typical sanity check:
```bash
idf.py --version
```

### Build the ESP32 firmware
```bash
cd ESP32
idf.py set-target esp32s3
idf.py build
```

### Flash and monitor
```bash
idf.py flash
idf.py monitor
```

## 5. Configure Wi-Fi

The firmware uses:
```text
ESP32/main/wifi_profile.h
```

A template also exists:
```text
ESP32/main/wifi_profile.h.example
```

## 6. Verilator install

On Ubuntu / WSL:
```bash
sudo apt update
sudo apt install verilator gtkwave build-essential
```

## 7. Read these docs next

Recommended order:
1. `PROJECT_STRUCTURE.md`
2. `FPGA_RTL_GUIDE.md`
3. `ESP32_FIRMWARE_GUIDE.md`
4. `CONTROL_PROTOCOL.md`
5. `BRINGUP_PLAN.md`
