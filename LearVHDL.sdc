# The first line “create_clock” tells Quartus Prime that the clock, CLK12M is 83.333 ns (12
# MHz). It also assigns the CLK12M to a pin (port) in the .sdc format.
# The second line “derive_pll_clocks” tells the software to look if there are any PLLs, and
# if so, automatically derive the clock multiplication/division of the outputs of the PLL even
# if they are used internally within the CPLD/FPGA.
# The third line “derive_clock_uncertainty” tells the software to automatically determine
# the internal clock uncertainty. No clock is ideal, and thus there will be some internal jitter
# within the FPGA associated with it.
# The fourth and fifth line “set_false_path” tells the software to not do any timing
# optimization to the stated paths/pins. The I/Os of this design are trivial, so they can be
# ignored in the Timing Analysis.

#create input clock which is 12MHz, period in ns
create_clock -name CLK12M -period 83.333 [get_ports {CLK12M}]
#derive PLL clocks
derive_pll_clocks
#derive clock uncertainty
derive_clock_uncertainty
#set false path
#set_false_path -from [get_ports {USER_BTN}]
set_false_path -from * -to [get_ports {LED*}]
set_false_path -from * -to [get_ports {CLK12_OUT}]
set_false_path -from * -to [get_ports {COUNT_0}]