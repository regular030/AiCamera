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
- A board repair technician added resin and disconnected the G9 ball so
  bring-up could continue.
- As of October 24, 2026, G9 is corrected to `+1V1` in the schematic/PDF,
  but the PCB layout inside `Ai-Camera.eprj` still assigns G9 to `+3V3`.
- The microSD path is paused and should not be treated as validated.
- ESP32-to-FPGA programming is not supported on this revision.
- The ESP32 reset-button path needed solder/rework attention and should be
  revised.

## 1. FPGA Power Rail Short

The first symptom was the ECP5 becoming extremely hot and appearing to burn.
This prompted a power-fault investigation. The assembled PCBA showed a
connection between the nominal 1.1 V and 3.3 V rails; bare PCBs did not show
the same short. Approximate recalled readings were 3.38 V on the higher rail
and 1.8 V on the core rail during the fault. These are not archived meter
readings, and the exact internal damage mechanism was not established.

Reviewing the package pins and nets identified G9 as the incorrect connection.
For `LFE5U-25F-6BG256C`, G9 is a VCC core-supply ball and belongs on `+1V1`.
The technician added resin and disconnected the ball. No reroute to `+1V1`
or FPGA replacement is claimed. The repaired prototype was used for further
FPGA/ESP32/camera bring-up.

The [full first-person debugging account](../Docs/FPGA_POWER_SHORT_DEBUG.md)
explains the observations and how each narrowed the investigation.

### Status As Of October 24, 2026

| Area | Status |
| --- | --- |
| Prototype repair | Short reported fixed by technician isolation of G9. |
| Schematic | G9 now connects to `+1V1`; visible on page 2 of the [new PDF](SCH_Schematic1_2026-10-24.pdf). |
| PCB layout | Still contains `["PAD_NET","e1","G9","+3V3","e650"]` in the decoded `pcb1` document. Layout correction is outstanding. |
| Manufacturing exports | Older Altium files/backups remain historical and must not be used as corrected release files. |
| Electrical qualification | Fresh measured rail voltages, current, temperature, and run duration are not recorded in this update. |

### Required Before The Next Fabrication Run

- [x] Correct the G9 connection in the schematic and export the schematic PDF.
- [ ] Update the PCB from the schematic; remove the old G9 connection and route
  the ball to `+1V1`, including affected vias/copper pours.
- [ ] Re-check every FPGA core, auxiliary, bank-supply, and ground pin against
  the pinout for the actual package; run ERC/DRC and inspect the routed result.
- [ ] Regenerate and review manufacturing outputs from the corrected layout.
- [ ] Keep accessible rail test points and record rail-to-ground and rail-to-rail
  checks before power-up, followed by voltages/current/temperature under power.

An isolated VCC ball is a prototype repair, not the intended supply connection
for a new board. Continued camera operation does not qualify the repaired FPGA
for long-term reliability after overheating.

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
