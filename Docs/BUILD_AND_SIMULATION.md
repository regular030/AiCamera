# Build And Simulation Guide

This guide covers FPGA builds, ESP32 builds, Verilator tests, and SDRAM test
notes for the current cleaned repo.

## FPGA Build

Active project:

```text
Lattice Diamond/recording/
```

Important files:

- `record.ldf`
- `record.lpf`
- `fpga_top.v`
- `run_capture_clean_export_tasks.tcl`

Build/export example:

```powershell
& 'C:\lscc\diamond\3.14\bin\nt64\pnmainc.exe' `
  'C:\Users\User\Desktop\AiCamera\Lattice Diamond\recording\run_capture_clean_export_tasks.tcl'
```

Expected exported bitstream path:

```text
Lattice Diamond/recording/_capture_clean_build/impl1/capclean_impl1.bit
```

Flash example:

```powershell
& 'C:\msys64\ucrt64\bin\openFPGALoader.exe' `
  -c ft232 `
  'C:\Users\User\Desktop\AiCamera\Lattice Diamond\recording\_capture_clean_build\impl1\capclean_impl1.bit'
```

## ESP32 Build

Project:

```text
ESP32/
```

Example:

```powershell
$env:IDF_PYTHON_ENV_PATH = 'C:\Users\User\.espressif\python_env\idf5.5_py3.11_env'
cmd /c "C:\Users\User\esp\v5.5.1\export.bat && cd /d C:\Users\User\Desktop\AiCamera\ESP32 && idf.py -p COM3 build flash monitor"
```

## Verilator

Simulation sources live under:

```text
sim/tb/
```

Current testbenches:

- `tb_uart_tx.cpp`
- `tb_uart_rx.cpp`
- `tb_uart_loopback.cpp`
- `tb_raw_frame_capture.cpp`
- `tb_ov5640_sccb.cpp`

Generated Verilator outputs and old VCDs are archived under `archive/generated/`.

## SDRAM Tests

The FPGA folder includes SDRAM test logic and notes:

```text
Lattice Diamond/recording/SDRAM_STRESS_TEST.md
```

Current status:

- SDRAM test infrastructure targets 120 MHz.
- Full SDRAM framebuffering is future work for the live camera path.
- Rev 1 hardware debugging should keep SDRAM separate from the main
  camera-to-preview validation path.
