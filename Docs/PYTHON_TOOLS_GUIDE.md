# Python Tools Guide

The current Python tools are used for local preview, SDRAM debug reads, and
orange-detector training.

## Local Serial Preview

Main script:

```text
scripts/serial_preview_server.py
```

Run:

```powershell
python scripts\serial_preview_server.py --port auto --baud 2000000 --http-port 8000
```

Open:

```text
http://127.0.0.1:8000/
```

The script reads ESP32 USB/serial packets, decodes `AICAMF1` frame packets and
`AICAMS1` status packets, and serves a browser preview from the host PC.

## SDRAM Debug Scripts

Current scripts:

- `scripts/read_sdram_stress.ps1`
- `scripts/read_sdram_sample_window.ps1`
- `scripts/read_sdram_read_return.ps1`

These are bring-up helpers for reading/debugging SDRAM test output. The live
preview path does not currently depend on SDRAM framebuffering.

## Orange Detector Training

Training tools live in:

```text
training/box20/
```

Important scripts:

- `capture_esp32_frames.py` - collect frames from an ESP32 HTTP preview path
  when that path is enabled.
- `label_frames_gui.py` - GUI labeling tool.
- `make_crops_from_boxes.py` - creates 20x20 positive/negative crops.
- `train_box20.py` - trains and exports the small FPGA-friendly model.
- `scan_box20.py` - scans frames and writes overlay previews.

Read:

```text
training/box20/README.md
```

## Legacy Overlay Script

`scripts/render_fpga_people_video.py` is historical/support tooling from earlier
metadata-overlay experiments. It is kept for reference, but the active demo path
is the live orange-detector preview.
