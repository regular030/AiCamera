# Base clock
create_clock -name clk_24m -period 41.666 [get_ports CRYSTAL]

# PLL outputs (from instance u_pll)
create_generated_clock -name clk_sys_192m \
  -source [get_ports CRYSTAL] \
  -multiply_by 8 \
  [get_pins u_pll/CLKOP]

create_generated_clock -name mclk_24m \
  -source [get_ports CRYSTAL] \
  -divide_by 1 \
  [get_pins u_pll/CLKOS]
  
 # Camera PCLK (set to your configured PCLK; start safe)
create_clock -name PCLK -period 20.833 [get_ports PCLK]  ;# 48 MHz example

# ESP32 CCLK
create_clock -name CCLK -period 50.0 [get_ports CCLK]    ;# 20 MHz example

set_clock_groups -asynchronous -group {PCLK}        -group {clk_sys_192m}
set_clock_groups -asynchronous -group {PCLK}        -group {CCLK}
set_clock_groups -asynchronous -group {clk_sys_192m} -group {CCLK}