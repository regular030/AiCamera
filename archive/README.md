# Archive

This folder contains old reference projects, temporary experiments, and generated
outputs that were useful during bring-up but are not part of the current active
SaturnAI Camera source tree.

## Folders

- `legacy-code/`
  - Imported/reference projects used while debugging SDRAM, HUB75 scripts, and
    other side experiments.
  - Keep these for traceability, but do not treat them as the current design.

- `generated/`
  - Old Verilator build folders and waveform traces.
  - These are preserved only because they existed in the working repo history.
    New generated outputs should stay untracked.
  - `scripts-output/` contains old live-preview screenshots and preview-server
    logs from camera bring-up.

- `datasets/`
  - Historical captures and training data used while tuning the orange detector.
  - Kept out of the repo root so the active source tree stays easy to scan.

- `local-config/`
  - Local editor configuration moved out of the repo root.

## Current Source

Use these top-level folders for active development:

- `Lattice Diamond/recording/` - current FPGA RTL and Diamond project
- `ESP32/` - current ESP-IDF firmware
- `scripts/` - current host preview/debug tools
- `training/` - current model/training scripts
- `PCB/` - board design assets
- `Docs/` - design notes and bring-up documentation
