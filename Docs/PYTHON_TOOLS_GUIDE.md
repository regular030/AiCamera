# Python Tools Guide

This guide documents the current Python-side workflow for AiCamera.

## Current reality

At the moment, the Python side of the project should be treated very narrowly:

- the main Python workflow is the **video overlay script**
- it is intended to draw FPGA detections and count metadata onto saved video
- it is **not fully tested end to end yet**

That means it should be treated as:
- a bring-up/debug support tool
- a visualization helper
- something that still needs validation against real FPGA-exported metadata

It should **not** be described as a finished or fully validated host software stack.

---

## Current Python workflow in scope

### Video overlay script
Purpose:
- take saved video
- take exported detection/count metadata
- draw bounding boxes, labels, IDs, and total-count style information onto the frames
- produce a visual output that is easier to inspect than raw metadata alone

Why it matters:
- makes FPGA outputs easier to sanity-check
- helps compare what the hardware thinks it saw against the underlying scene
- can become a very useful bring-up/debug tool once validated

---

## What still needs testing

The overlay workflow still needs real end-to-end validation for things like:
- frame indexing alignment
- box placement
- coordinate scaling
- metadata formatting
- count display correctness
- compatibility with the actual exported FPGA metadata format

Until those checks are done on real outputs, the script should be treated as:
- useful
- promising
- not yet proven

---

## Recommended validation path

### 1. Offline sanity test
Use:
- a short known video clip
- a tiny hand-written metadata file

Confirm:
- the script runs
- output video is written
- frame indexing behaves as expected
- boxes appear where they should

### 2. Format validation
Take one real metadata export from the FPGA flow and verify:
- fields match what the overlay script expects
- units and coordinate conventions are correct
- track IDs / labels / counts are interpreted correctly

### 3. End-to-end validation
Run the full path:
- FPGA produces metadata
- metadata is saved/exported
- overlay script consumes it
- visual output matches what actually happened in the scene

---

## Documentation rule for now

When describing the Python side of AiCamera, the safest accurate statement is:
- there is currently a **video overlay workflow**
- it is intended for visualization/debug
- it is **not fully end-to-end tested yet**

That is the correct current status.
