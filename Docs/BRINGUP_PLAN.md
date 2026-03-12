# Bring-Up Plan

This is the recommended bring-up order for AiCamera hardware.

## Core rule
Do not debug later stages when earlier stages are still uncertain.

---

## 1. Physical inspection
Before power:
- inspect assembly
- check polarity and orientation
- look for shorts, lifted pins, solder issues, missing parts

## 2. Power rails
Verify:
- all expected rails are present
- no obvious overcurrent
- no heating surprises
- no FPGA brownout during startup

## 3. Clocks and reset
Verify:
- crystal activity
- PLL output
- camera MCLK
- reset release

## 4. FPGA configuration
Verify:
- programming path works
- bitstream loads repeatably
- use a simple known-good image first if possible

## 5. ESP32 bring-up
Verify:
- firmware flashes
- boot is sane
- Wi-Fi joins
- HTTP endpoints respond
- UART peripheral is active

## 6. Camera init
Verify:
- SCCB traffic
- `init_done`
- no unexpected `init_err`

## 7. Camera timing
Verify:
- PCLK
- VSYNC
- HREF
- Y bus changes

## 8. Raw capture path
Verify:
- frame counters
- payload sizing
- SDRAM-side write acceptance
- stable repeated behavior

## 9. SDRAM validation
Verify:
- write/read behavior
- occupancy / level behavior
- no obvious corruption

## 10. FPGA command path
Verify:
- UART packets arrive
- parser accepts commands
- control registers update
- ACK path works

## 11. Detect path
Verify in order:
1. proposal generation
2. crop path
3. classifier path
4. candidate stability
5. count logic

## 12. Logging / visualization
Once the core path is trustworthy:
- export useful logs
- inspect packed metadata
- use the video overlay workflow once metadata export is stable

---

## Bring-up discipline
- change one major variable at a time
- keep notes
- save working bitstreams
- save working ESP32 firmware revisions
- keep simple known-good tests
