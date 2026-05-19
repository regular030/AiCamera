# ESP32 Firmware Guide

The ESP32-S3 firmware lives in:

```text
ESP32/
```

The current active firmware role is a bridge:

```text
FPGA packed GPIO stream -> ESP32 direct GPIO capture -> USB/serial packets
```

The FPGA owns camera capture and image processing. The ESP32 receives the
already-processed stream and forwards it to the host.

## Key Files

- `ESP32/main/main.c` - GPIO receiver, frame repair/hold logic, USB/serial
  packet output, status packets, and inactive HTTP handler code.
- `ESP32/main/upload.c` - helper/source file used by the firmware project.
- `ESP32/main/wifi_profile.h.example` - Wi-Fi credential template for optional
  Wi-Fi/HTTP experiments.
- `ESP32/main/idf_component.yml` - ESP-IDF dependency config.
- `ESP32/sdkconfig` - current project configuration.

## Current Active Path

At app startup, the current firmware:

- initializes NVS.
- creates frame/status mutexes and semaphores.
- starts the USB serial stream.
- starts a high-priority GPIO capture task on CPU 1.
- starts a serial frame output task.
- starts a periodic status packet task.

The Wi-Fi/HTTP handlers remain in `main.c`, but the current `app_main()` does
not start the Wi-Fi server path. Use the Python localhost preview for the active
workflow.

## GPIO Capture

The FPGA sends:

- 6 data lanes.
- a strobe/clock line.
- a frame gate.
- row markers for resync.
- RGB565 pixels packed into 3 symbols per pixel.

The ESP32 reads GPIO registers directly, reconstructs 160x120 frames, repairs
small row/symbol issues where possible, holds obviously bad green-tint frames,
and publishes the newest clean frame to the serial output task.

## USB/Serial Packets

Frame packets use the magic string:

```text
AICAMF1
```

Status packets use:

```text
AICAMS1
```

The host preview server decodes these packets and serves a local browser UI.

## Build And Flash

Example build/flash flow:

```powershell
$env:IDF_PYTHON_ENV_PATH = 'C:\Users\User\.espressif\python_env\idf5.5_py3.11_env'
cmd /c "C:\Users\User\esp\v5.5.1\export.bat && cd /d C:\Users\User\Desktop\AiCamera\ESP32 && idf.py -p COM3 build flash monitor"
```

Use the correct COM port for your ESP32-S3.

## Current Bottleneck

The major throughput limit is not the FPGA image pipeline itself. It is the
ESP32-side software GPIO capture and forwarding path. The FPGA can present
symbols much faster than the current ESP32 polling/packetizing path can reliably
consume while also keeping frames aligned and visually clean.
