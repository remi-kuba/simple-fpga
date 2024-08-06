# URBANA BOARD CONSTRAINTS V2I1 1/3/2023 
# clk input is from the 100 MHz oscillator on Urbana board
create_clock -period 10.000 -name gclk [get_ports CLK_100MHZ];
set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports {CLK_100MHZ}];

# Set Bank 0 voltage
#set_property CFGBVS VCCO [current_design]
#set_property CONFIG_VOLTAGE 3.3 [current_design]
#set_property BITSTREAM.Config.SPI_buswidth 4 [current_design]

# On-board Slide Switches
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS25} [get_ports {SW[0]}]
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS25} [get_ports {SW[1]}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS25} [get_ports {SW[2]}]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS25} [get_ports {SW[3]}]
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS25} [get_ports {SW[4]}]
set_property -dict {PACKAGE_PIN D2 IOSTANDARD LVCMOS25} [get_ports {SW[5]}]
set_property -dict {PACKAGE_PIN D1 IOSTANDARD LVCMOS25} [get_ports {SW[6]}]
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS25} [get_ports {SW[7]}]
set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS25} [get_ports {SW[8]}]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS25} [get_ports {SW[9]}]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS25} [get_ports {SW[10]}]
set_property -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS25} [get_ports {SW[11]}]
set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS25} [get_ports {SW[12]}]
set_property -dict {PACKAGE_PIN A7 IOSTANDARD LVCMOS25} [get_ports {SW[13]}]
set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS25} [get_ports {SW[14]}]
set_property -dict {PACKAGE_PIN A8 IOSTANDARD LVCMOS25} [get_ports {SW[15]}]

# On-board LEDs
set_property -dict {PACKAGE_PIN C13 IOSTANDARD LVCMOS33} [get_ports {LED[0]}]
set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVCMOS33} [get_ports {LED[1]}]
set_property -dict {PACKAGE_PIN D14 IOSTANDARD LVCMOS33} [get_ports {LED[2]}]
set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS33} [get_ports {LED[3]}]
set_property -dict {PACKAGE_PIN D16 IOSTANDARD LVCMOS33} [get_ports {LED[4]}]
set_property -dict {PACKAGE_PIN F18 IOSTANDARD LVCMOS33} [get_ports {LED[5]}]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33} [get_ports {LED[6]}]
set_property -dict {PACKAGE_PIN D17 IOSTANDARD LVCMOS33} [get_ports {LED[7]}]
set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS33} [get_ports {LED[8]}]
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports {LED[9]}]
set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVCMOS33} [get_ports {LED[10]}]
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports {LED[11]}]
set_property -dict {PACKAGE_PIN C18 IOSTANDARD LVCMOS33} [get_ports {LED[12]}]
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports {LED[13]}]
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports {LED[14]}]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {LED[15]}]

# On-board Buttons
set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS25} [get_ports {BTN[0]}]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS25} [get_ports {BTN[1]}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS25} [get_ports {BTN[2]}]
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS25} [get_ports {BTN[3]}]

# On-board color LEDs
set_property -dict {PACKAGE_PIN C9 IOSTANDARD LVCMOS33} [get_ports {RGB0[0]}];   # RBG0_R
set_property -dict {PACKAGE_PIN A9 IOSTANDARD LVCMOS33} [get_ports {RGB0[1]}];   # RBG0_G
set_property -dict {PACKAGE_PIN A10 IOSTANDARD LVCMOS33} [get_ports {RGB0[2]}];   # RBG0_B
set_property -dict {PACKAGE_PIN A11 IOSTANDARD LVCMOS33} [get_ports {RGB1[0]}];   # RBG1_R
set_property -dict {PACKAGE_PIN C10 IOSTANDARD LVCMOS33} [get_ports {RGB1[1]}];   # RBG1_G
set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS33} [get_ports {RGB1[2]}];   # RBG1_B

## On-board 7-Segment display 0
set_property -dict {PACKAGE_PIN G6 IOSTANDARD LVCMOS25} [get_ports {D0_AN[0]}];  # Active LOW
set_property -dict {PACKAGE_PIN H6 IOSTANDARD LVCMOS25} [get_ports {D0_AN[1]}]; # Active LOW
set_property -dict {PACKAGE_PIN C3 IOSTANDARD LVCMOS25} [get_ports {D0_AN[2]}];  # Active LOW
set_property -dict {PACKAGE_PIN B3 IOSTANDARD LVCMOS25} [get_ports {D0_AN[3]}];  # Active LOW
set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVCMOS25} [get_ports {D0_SEG[0]}];  # CA Active LOW
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS25} [get_ports {D0_SEG[1]}];  # CB Active LOW
set_property -dict {PACKAGE_PIN D5 IOSTANDARD LVCMOS25} [get_ports {D0_SEG[2]}];  # CC Active LOW
set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS25} [get_ports {D0_SEG[3]}];  # CD Active LOW
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS25} [get_ports {D0_SEG[4]}];  # CE Active LOW
set_property -dict {PACKAGE_PIN D6 IOSTANDARD LVCMOS25} [get_ports {D0_SEG[5]}];  # CF Active LOW
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS25} [get_ports {D0_SEG[6]}];  # CG Active LOW
set_property -dict {PACKAGE_PIN B5 IOSTANDARD LVCMOS25} [get_ports {D0_SEG[7]}];  # CDP Active LOW

## On-board 7-Segment display 1
set_property -dict {PACKAGE_PIN E4 IOSTANDARD LVCMOS25} [get_ports {D1_AN[0]}];  # Active LOW
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS25} [get_ports {D1_AN[1]}];  # Active LOW
set_property -dict {PACKAGE_PIN F5 IOSTANDARD LVCMOS25} [get_ports {D1_AN[2]}];  # Active LOW
set_property -dict {PACKAGE_PIN H5 IOSTANDARD LVCMOS25} [get_ports {D1_AN[3]}];  # Active LOW
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS25} [get_ports {D1_SEG[0]}];  # CA Active LOW
set_property -dict {PACKAGE_PIN G5 IOSTANDARD LVCMOS25} [get_ports {D1_SEG[1]}];  # CB Active LOW
set_property -dict {PACKAGE_PIN J3 IOSTANDARD LVCMOS25} [get_ports {D1_SEG[2]}];  # CC Active LOW
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS25} [get_ports {D1_SEG[3]}];  # CD Active LOW
set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS25} [get_ports {D1_SEG[4]}];  # CE Active LOW
set_property -dict {PACKAGE_PIN H3 IOSTANDARD LVCMOS25} [get_ports {D1_SEG[5]}];  # CF Active LOW
set_property -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS25} [get_ports {D1_SEG[6]}];  # CG Active LOW
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS25} [get_ports {D1_SEG[7]}];  # CDP Active LOW
