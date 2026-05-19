# FPGA RTL Guide

The active FPGA design lives in:

```text
Lattice Diamond/recording/
```

The main file is:

```text
Lattice Diamond/recording/fpga_top.v
```

## Current Video Pipeline

The current working path is true 160x120 camera preview:

```text
OV-series DVP YUYV camera input
  -> FPGA byte/phase capture
  -> FPGA YUYV to RGB565 conversion
  -> 160x120 frame generation
  -> tile-grid orange detector and overlay
  -> packed 6-lane GPIO stream to ESP32-S3
```

The FPGA owns timing-critical work. The ESP32 should be treated as the host
bridge, not the vision engine.

## Key RTL Files

- `fpga_top.v` - top-level camera, RGB conversion, transport, detector, and
  SDRAM-test integration.
- `ov5640_sccb_init.v` - SCCB/I2C camera register initialization.
- `pll_24m_to_120m.v` - generated PLL block for the 120 MHz side.
- `reset_sync.v` - reset synchronization.
- `uart_rx.v`, `uart_tx.v` - debug/control UART blocks.
- `cam_capture_rgb565.v`, `framebuffer_capture.v` - camera/frame capture support.
- `async_fifo_16x1024.v` - cross-clock buffering support.
- `w9825_sdram_ctrl.v`, `w9825_ref_sdram_ctrl.v`,
  `w9825_direct_req_sdram_ctrl.v` - SDRAM controller/test variants.
- `sdram_stress_tester.v`, `w9825_burst_selftest.v` - SDRAM validation logic.
- `sd_spi_writer.v` - SD-card write experiment, currently paused.
- `box20_cnn_int8_core.v`, `box20_cnn_frame_scanner.v` - experimental CNN/tile
  detector logic.

## Important Current Parameters

`fpga_top.v` contains the active tuning parameters. At the time of this doc:

- `SENSOR_W = 160`, `SENSOR_H = 120`
- `PREVIEW_SYMBOLS_PER_PIXEL = 3`
- `QVGA_PARLIO_STREAM = 1`
- `QVGA_BYTE_STREAM = 0`
- `QVGA_FIFO_AW = 15`
- `BOX20_TILE_COLS = 8`
- `BOX20_TILE_ROWS = 6`
- `BOX20_DETECT_ENABLE = 1`
- `BOX20_GRID_CNN_ENABLE = 1`
- `BOX20_LINEAR_ENABLE = 1`
- `SDRAM_STRESS_CLK_HZ = 120000000`

## Detector Path

The current detector is an FPGA-friendly 20x20 tile-grid orange detector:

- Frame is 160x120.
- Grid is 8 columns by 6 rows.
- Each tile is 20x20 pixels.
- FPGA accumulates RGB/orange features per tile.
- Learned scoring and neighborhood filtering reduce false positives.
- Boxes are drawn directly in hardware.

This is not a full desktop CNN. A fuller CNN was explored, but the current
timing-clean path is a compact learned tile detector plus grid filtering that
fits the ECP5 budget.

## SDRAM And SD Status

SDRAM:

- 120 MHz SDRAM test infrastructure exists.
- SDRAM framebuffering is not required for the current live preview path.
- See `Lattice Diamond/recording/SDRAM_STRESS_TEST.md`.

microSD:

- SD write RTL exists as an experiment.
- The SD path is paused because Rev 1.0 hardware/debug time is better spent on
  the camera-to-preview path.

## Recommended RTL Reading Order

1. `fpga_top.v`
2. `ov5640_sccb_init.v`
3. `record.lpf`
4. camera capture/RGB conversion blocks
5. packed GPIO transport logic inside `fpga_top.v`
6. box20 detector parameters and scanner/core files
7. SDRAM stress-test modules
8. UART/debug blocks
