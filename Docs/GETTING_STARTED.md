# Getting Started

This guide gets the current SaturnAI Camera repo built, flashed, and previewing
frames.

## 1. Read The Hardware Warning

Before ordering or powering hardware, read:

```text
PCB/REV1_ERRATA.md
```

Rev 1.0 is a repaired bring-up board. Do not manufacture it unchanged.

## 2. Install Tools

Required host tools:

- Windows 10/11
- Git
- Python 3.11 or newer
- Lattice Diamond 3.14
- MSYS2 with `openFPGALoader`
- ESP-IDF 5.5.x
- `pyserial`

Install the preview dependency:

```powershell
python -m pip install pyserial
```

## 3. Build And Flash The FPGA

The active FPGA project is:

```text
Lattice Diamond/recording/
```

Current primary build script:

```powershell
& 'C:\lscc\diamond\3.14\bin\nt64\pnmainc.exe' `
  'C:\Users\User\Desktop\AiCamera\Lattice Diamond\recording\run_capture_clean_export_tasks.tcl'
```

Flash the exported bitstream:

```powershell
& 'C:\msys64\ucrt64\bin\openFPGALoader.exe' `
  -c ft232 `
  'C:\Users\User\Desktop\AiCamera\Lattice Diamond\recording\_capture_clean_build\impl1\capclean_impl1.bit'
```

Update paths for your machine. During bring-up, the FPGA programming adapter was
used through `openFPGALoader`.

## 4. Build And Flash The ESP32-S3

The active ESP-IDF project is:

```text
ESP32/
```

On the development machine used during bring-up, ESP-IDF used this Python env:

```text
C:\Users\User\.espressif\python_env\idf5.5_py3.11_env
```

Example flow:

```powershell
$env:IDF_PYTHON_ENV_PATH = 'C:\Users\User\.espressif\python_env\idf5.5_py3.11_env'
cmd /c "C:\Users\User\esp\v5.5.1\export.bat && cd /d C:\Users\User\Desktop\AiCamera\ESP32 && idf.py -p COM3 build flash monitor"
```

Use the correct serial port for your board.

## 5. Start The Local Preview

After the FPGA and ESP32 are running, start the host preview:

```powershell
python scripts\serial_preview_server.py --port auto --baud 2000000 --http-port 8000
```

Open:

```text
http://127.0.0.1:8000/
```

The preview server reads ESP32 USB/serial packets, displays the newest frame,
and shows status telemetry.

## 6. Optional Wi-Fi Files

The ESP32 project still includes `wifi_profile.h.example` because earlier
bring-up used Wi-Fi/HTTP preview. If that path is re-enabled, copy:

```powershell
Copy-Item ESP32\main\wifi_profile.h.example ESP32\main\wifi_profile.h
```

Then edit the local credentials. `wifi_profile.h` should stay untracked.
