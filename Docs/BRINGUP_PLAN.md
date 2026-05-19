# Bring-Up Plan

This is the practical bring-up order for SaturnAI Camera hardware.

## Rule Zero

Do not debug camera frames before power, clocks, reset, and programming are
trusted.

## 1. Inspect The Board

Before power:

- inspect assembly and orientation.
- check for solder bridges, lifted parts, and damaged pads.
- compare assembled PCBA against the known Rev 1 errata.
- inspect FPGA/BGA area as much as practical.

## 2. Check Power Rails Before Power-Up

Measure resistance/continuity:

- 1.1 V to ground.
- 1.8 V to ground.
- 3.3 V to ground.
- 1.1 V to 3.3 V.
- 1.1 V to 1.8 V.
- 1.8 V to 3.3 V.

Rev 1 had a real assembled-board 1.1 V to 3.3 V issue, so this step is not
optional.

## 3. Power Rails Under Power

Verify:

- 1.1 V FPGA core rail.
- 1.8 V rail where used.
- 3.3 V rail.
- regulator temperature.
- current draw.
- reset/enable behavior.

## 4. Clocks And Reset

Verify:

- FPGA input clock.
- FPGA PLL outputs.
- 24 MHz camera clock if enabled.
- ESP32 EN/reset behavior.
- camera reset/powerdown behavior.

## 5. FPGA Programming

Start with a simple known-good or current exported bitstream. Program through
the external programmer path using `openFPGALoader`.

Do not rely on ESP32-to-FPGA programming on Rev 1.0.

## 6. ESP32 Flash And Serial

Verify:

- ESP32 flashes.
- boot log appears.
- USB/serial stream starts.
- status packets appear if the FPGA stream is present.

## 7. Camera Bring-Up

Verify:

- SCCB/I2C camera initialization completes.
- camera PCLK toggles.
- VSYNC/HREF behavior is plausible.
- data pins toggle with a real scene.

## 8. FPGA-To-ESP32 Video Link

Verify:

- frame gate toggles.
- strobe/clock toggles.
- 6 data lanes change.
- ESP32 sees headers/row markers.
- frame counters increase.
- localhost preview updates.

## 9. Image Quality

Only after link lock is stable, tune:

- YUYV byte/phase assumptions.
- RGB565 conversion.
- row marker/recovery thresholds.
- tint-hold rejection.
- camera exposure/gain choices.

## 10. Detector

Verify:

- orange object appears with real color.
- detector boxes appear on the right tiles.
- false positives are understood and turned into training negatives.
- FPGA model parameters match the trained/exported files.

## 11. SDRAM And SD

Keep these as separate tests:

- SDRAM stress tests can be run independently of live preview.
- SD logging is paused on Rev 1 and should not block the camera/preview path.

## Bring-Up Notes To Keep

For each working build, record:

- FPGA bitstream path and build ID.
- ESP32 git state/build time.
- camera module used.
- observed preview FPS.
- visible image artifacts.
- any hardware rework or solder changes.
