# ESP32 Firmware Guide

This document explains the current ESP32-S3 firmware project and how to build and use it.

## Current purpose

The ESP32 firmware is the board control layer.

It currently handles:
- Wi-Fi station-mode startup
- a small HTTP API
- UART command packet generation
- forwarding those commands to the FPGA

It is not the real-time vision engine. It exists to make the FPGA platform easier to use and control.

---

## Current file layout

```text
ESP32/
├── CMakeLists.txt
├── sdkconfig
└── main/
    ├── CMakeLists.txt
    ├── main.c
    ├── cmd_protocol.c
    ├── cmd_protocol.h
    ├── wifi_profile.h
    └── wifi_profile.h.example
```

## File-by-file explanation

### `CMakeLists.txt`
Top-level ESP-IDF project entry.

### `sdkconfig`
ESP-IDF project config for the current build snapshot.

### `main/CMakeLists.txt`
Build description for the `main` component.

### `main/main.c`
Main firmware application.

It currently:
- initializes NVS
- initializes the network stack
- configures UART1
- starts Wi-Fi station mode
- starts an HTTP server
- maps HTTP requests to FPGA UART command packets

### `main/cmd_protocol.h`
Defines:
- sync bytes
- FPGA opcodes
- packet-builder function declaration

### `main/cmd_protocol.c`
Builds the current 8-byte command packets sent to the FPGA.

### `main/wifi_profile.h`
Local credential/config file used by the firmware.

### `main/wifi_profile.h.example`
Template version of the credentials file.

---

## Current status

Right now:
- the **ESP32 starter code builds**
- it still needs real hardware validation on the board
- the UART and HTTP flow still need to be confirmed end to end with the FPGA

That is a good place to be for bring-up firmware.

---

## Build and flash

From `ESP32/`:

```bash
idf.py set-target esp32s3
idf.py build
idf.py flash
idf.py monitor
```

## Before building
Make sure:
- ESP-IDF is installed
- your shell is configured for `idf.py`
- `wifi_profile.h` contains your intended network values

---

## How to use the current firmware

## 1. Configure Wi-Fi
Edit:
```text
ESP32/main/wifi_profile.h
```

## 2. Build
```bash
cd ESP32
idf.py build
```

## 3. Flash
```bash
idf.py flash
```

## 4. Monitor logs
```bash
idf.py monitor
```

## 5. Test HTTP endpoints
Once the ESP32 is on the network, test:
- `/ping`
- `/status`
- `/capture`
- `/mode`
- `/stride`

Examples:
```bash
curl http://<esp32-ip>/ping
curl "http://<esp32-ip>/capture?enable=1"
curl "http://<esp32-ip>/mode?value=1"
curl "http://<esp32-ip>/stride?value=2"
```

---

## Current limitations

The firmware is intentionally simple right now:
- no rich FPGA response parsing
- no complex retry/state machine
- no authentication layer
- no polished telemetry API

That is fine for bring-up. The current job of the firmware is to be:
- easy to build
- easy to flash
- easy to test
- easy to trace

---

## Recommended validation order

1. build succeeds
2. flash succeeds
3. board boots
4. Wi-Fi joins
5. `/ping` works
6. `/status` produces UART packet traffic
7. FPGA reacts to control commands

That order keeps failures easier to interpret.
