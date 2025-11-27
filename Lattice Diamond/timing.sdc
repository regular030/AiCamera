# Base clocks
create_clock -name clk_24m -period 41.666 [get_ports CRYSTAL]   ;# if you feed PLL directly from pin
# If PLL is black box, derive generated clocks:
create_generated_clock -name sdram_clk -source [get_ports CRYSTAL] -divide_by 0.25 [get_pins u_pll/CLKOP] ;# 24->96
create_generated_clock -name mclk      -source [get_ports CRYSTAL] -divide_by 1    [get_pins u_pll/CLKOS] ;# 24

# Camera input clock (PCLK) from sensor
create_clock -name PCLK -period 41.666 [get_ports PCLK]  ;# 24 MHz nominal; set to your actual PCLK

# Simple IO delays for camera bus relative to PCLK (rough starters)
set_input_delay  -clock PCLK 2.0 [get_ports {Y2 Y3 Y4 Y5 Y6 Y7 Y8 Y9 HREF VSYNC}]
set_input_delay  -clock PCLK 2.0 -min [get_ports {Y2 Y3 Y4 Y5 Y6 Y7 Y8 Y9 HREF VSYNC}]

# SPI clock (from ESP32)
create_clock -name CCLK -period 50.0 [get_ports CCLK]  ;# 20 MHz example, adjust to your ESP32 SCLK

# False paths between unrelated domains (keep CDC clean)
set_clock_groups -asynchronous -group {PCLK} -group {sdram_clk}
set_clock_groups -asynchronous -group {PCLK} -group {CCLK}
set_clock_groups -asynchronous -group {sdram_clk} -group {CCLK}
