# SDRAM Stress Test

This build has an FPGA-side SDRAM stress mode for the W9825G6KH. It drives the SDRAM controller from a PLL-generated 120 MHz clock, writes deterministic 16-bit patterns, reads them back, and compares the returned data in hardware.

## Files

- `pll_24m_to_120m.v`: ECP5 PLL wrapper for the 120 MHz SDRAM test clock.
- `sdram_stress_tester.v`: write/read/compare stress engine.
- `w9825_sdram_ctrl.v`: single-word SDRAM controller with init, refresh, write, read, byte masks, and debug pulses.
- `fpga_top.v`: routes the SDRAM app bus to the tester when `SDRAM_STRESS_ENABLE` is set.
- `scripts/read_sdram_stress.ps1`: polls ESP `/stats` and decodes the stress diagnostic chunks.

## Build And Flash

From the repo root:

```powershell
& 'C:\lscc\diamond\3.14\bin\nt64\pnmainc.exe' 'C:\Users\kunsh\Desktop\AiCamera\Lattice Diamond\recording\run_capture_clean_export_tasks.tcl'
& 'C:\msys64\ucrt64\bin\openFPGALoader.exe' --quiet --freq 500000 -c ft232 'C:\Users\kunsh\Desktop\AiCamera\Lattice Diamond\recording\_capture_clean_build\impl1\capclean_impl1.bit'
.\scripts\read_sdram_stress.ps1
```

## Diagnostic Format

The tester reuses the existing ESP frame header debug symbol, so it works even before reflashing the ESP firmware.

- Pages 0 through 7: 2-bit chunks of the first bad actual read word.
- Pages 8 through 15: 2-bit chunks of the first bad expected word.

## Current Board Result

The FPGA build closes timing at 120 MHz with 0 setup/hold timing errors. On the current board, the stress test does not pass yet. The decoded first failure is:

```text
actual=0x96A5 expected=0x5AA5 byte_mask=2
```

That means the lower byte lane matched on the first failed word, but the upper byte lane did not. Do not claim full 16-bit SDRAM is validated at 120 MHz yet. The next checks are `SD_DQM1`/`UDQM`, `SD_DQ8` through `SD_DQ15`, high-byte VDDQ/GND pins, and the matching LPF/PCB pin map.
