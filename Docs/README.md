# Docs

This folder contains the main written documentation for AiCamera.

## Files

- `GETTING_STARTED.md`  
  environment setup, install steps, and first workflow

- `PROJECT_STRUCTURE.md`  
  explanation of the real repo layout and what the major folders/files are for

- `FPGA_RTL_GUIDE.md`  
  explanation of the current FPGA architecture and the main RTL blocks

- `ESP32_FIRMWARE_GUIDE.md`  
  how the ESP32 firmware is structured, built, flashed, and used

- `BUILD_AND_SIMULATION.md`  
  Diamond build flow, current generated outputs in the repo, and Verilator workflow

- `BRINGUP_PLAN.md`  
  stage-by-stage bring-up order for the real hardware

- `CONTROL_PROTOCOL.md`  
  documentation for the current ESP32-to-FPGA control packet format

- `PYTHON_TOOLS_GUIDE.md`  
  documentation for the current Python-side workflow, which is currently just the video overlay path

## Python tooling note

At the current stage of the project, the Python side should be documented narrowly:
- the relevant Python workflow is the **video overlay path**
- it is still **not fully tested end to end**
- the docs should not imply a complete validated Python host suite exists yet
