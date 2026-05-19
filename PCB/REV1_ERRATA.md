# SaturnAI Camera Rev 1.0 Hardware Errata

Rev 1.0 is the first bring-up board. It proved the core architecture, but it is
not an orderable manufacturing release. Do not fabricate or assemble this
revision unchanged.

## Summary

- The assembled boards had a major 1.1 V to 3.3 V short around the FPGA/BGA
  power area.
- The bare unassembled PCBs did not show the same short, which pointed the
  investigation toward the assembled FPGA/BGA region rather than a global board
  short.
- The issue was traced to the FPGA G9 ball/nearby routing being tied to 3.3 V
  instead of the intended FPGA core rail.
- A board repair technician repaired the affected hardware so bring-up could
  continue.
- The microSD path is paused and should not be treated as validated.
- ESP32-to-FPGA programming is not supported on this revision.
- The ESP32 reset-button path needed solder/rework attention and should be
  revised.

## 1. FPGA Power Rail Short

The largest Rev 1.0 hardware issue was a short between the FPGA 1.1 V core rail
and 3.3 V on the assembled boards.

Observed behavior:

- Assembled PCBA showed a 1.1 V to 3.3 V short.
- Bare unassembled PCB did not show the same short.
- The fault localized near the FPGA/BGA area.
- The working conclusion was that FPGA ball G9/nearby routing was tied to 3.3 V
  instead of the intended 1.1 V FPGA core rail.

Impact:

- The board could not be powered safely until the rail issue was isolated.
- Bring-up had to start with continuity checks and rail validation instead of
  normal firmware/FPGA testing.
- Repair required BGA-level or near-BGA rework, so this is not a casual user
  fix.

Current status:

- The issue was repaired by a board repair technician.
- The repaired board was used for continuing FPGA/ESP32/camera bring-up.

Next revision action:

- Correct the FPGA G9 power/net assignment and routing.
- Re-check FPGA bank/core power pins against the package pinout before layout
  release.
- Add/keep accessible rail test points for 1.1 V, 1.8 V, and 3.3 V.
- Keep the pre-power-up checklist: check shorts from each rail to ground and
  between rails before applying power.

## 2. microSD Path Paused

The board includes an SD-card path and the FPGA repo contains SD logging/write
experiments. During Rev 1.0 bring-up, this path became a hardware/debug
distraction compared with the main goal of live camera streaming.

Current status:

- The active working preview path is FPGA to ESP32 to USB/serial to localhost.
- microSD logging is not part of the validated live-preview workflow.
- Treat SD-card support as future work until the next revision and a dedicated
  SD bring-up pass.

Next revision action:

- Re-check SD connector footprint, card-detect/write-protect assumptions,
  pullups, routing, and series damping.
- Keep SD optional so the camera/FPGA/ESP32 path can be brought up without it.

## 3. ESP32-to-FPGA Programming Path

One attempted direction was programming or configuring the FPGA through the
ESP32. Rev 1.0 does not support that cleanly.

Issue:

- The FPGA-side SPI/programming relationship was not designed as the needed
  ESP32-master/FPGA-slave path.
- The board ended up with the FPGA acting as SPI master for the relevant path,
  which blocked the intended ESP32-to-FPGA programming approach.
- A pad was damaged during the attempted workaround/rework.

Current status:

- Use the external FPGA programming/debug path, such as FTDI/FT232 with
  `openFPGALoader`.
- Do not rely on ESP32-to-FPGA programming on Rev 1.0.

Next revision action:

- Decide explicitly whether ESP32-assisted FPGA programming is required.
- If yes, design the flash/configuration topology around that from the start.
- Add safe test pads or jumpers so programming experiments do not require risky
  pad-level rework.

## 4. ESP32 Reset Button

The ESP32 reset button did not behave reliably on Rev 1.0 and required soldering
or local board work during bring-up.

Impact:

- ESP32 flashing/reset workflow was less smooth than intended.
- Manual rework was needed for reliable operation.

Next revision action:

- Re-check ESP32 EN/reset circuit, pullup/pulldown values, switch wiring, and
  routing.
- Keep reset/boot pins easy to probe and rework.

## Practical Bring-Up Lesson

Rev 1.0 proved why the board needs generous debug access. The camera/FPGA/ESP32
pipeline was eventually brought up, but only after careful rail checks,
continuity testing, programming-path validation, and hardware repair. The next
revision should keep the same architecture while fixing the known PCB issues and
making power/programming/reset bring-up less fragile.
