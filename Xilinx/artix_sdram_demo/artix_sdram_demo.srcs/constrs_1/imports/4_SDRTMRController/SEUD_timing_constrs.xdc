### This file is a general .xdc for the SEUD Board Rev. A
### To use it in a project:
### - uncomment the lines corresponding to used pins
### - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## LEDs
set_false_path -to [get_ports "*status_led*"]

## BRIDGE
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sck_IBUF]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sck_IBUF_BUFG]

## SDRAM
#create_generated_clock -name SDRAM_CLK -source [get_pins DemoSDRAM_i/clk_wiz_1/inst/clk_sdram] -multiply_by 1 [get_ports clk_sdram];
set rdclk                   [get_clocks -filter {NAME=~"clk_blaze_DemoSDRAM_clk_wiz_1_0"} ];
set fwclk                   [get_clocks -filter {NAME=~"clk_sdram_DemoSDRAM_clk_wiz_1_0"} ];        # Forwarded clockset
set sdram_tsu               2.000;            # Destination device setup time requirement
set sdram_thd               1.000;            # Destination device hold time requirement
set tco_max                 8.000;            # Maximum clock to out delay (external device)
set tco_min                 1.000;            # Minimum clock to out delay (external device)
set sdram_trce_dly_max      1.000;            # Maximum board trace delay
set sdram_trce_dly_min      0.500;            # Minimum board trace delay
#  Rising Edge Source Synchronous Outputs 
#
#  Source synchronous output interfaces can be constrained either by the max data skew
#  relative to the generated clock or by the destination device setup/hold requirements.
#
#  Setup/Hold Case:
#  Setup and hold requirements for the destination device and board trace delays are known.
#  
# forwarded         ____                      ___________________ 
# clock                 |____________________|                   |____________ 
#                                            |
#                                     tsu    |    thd
#                                <---------->|<--------->
#                                ____________|___________
# data @ destination    XXXXXXXXX________________________XXXXX
#
set_output_delay -clock $fwclk -min [expr $sdram_trce_dly_min - $sdram_thd] [get_ports -filter { NAME =~  "*addr*" || NAME =~  "*dataQ*" || NAME =~ "*bank*" || NAME =~ "*we*" || NAME =~ "*ras*" || NAME =~ "*cas*" || NAME =~ "*cs*" || NAME =~ "*dqm*" || NAME =~ "*cke*"}];
set_output_delay -clock $fwclk -max [expr $sdram_trce_dly_max + $sdram_tsu] [get_ports -filter { NAME =~  "*addr*" || NAME =~  "*dataQ*" || NAME =~ "*bank*" || NAME =~ "*we*" || NAME =~ "*ras*" || NAME =~ "*cas*" || NAME =~ "*cs*" || NAME =~ "*dqm*" || NAME =~ "*cke*"}];

# Rising Edge System Synchronous Inputs
#
# A Single Data Rate (SDR) System Synchronous interface is
# an interface where the external device and the FPGA use
# the same clock, and a new data is captured one clock cycle
# after being launched
#
# input      __________            __________
# clock   __|          |__________|          |__
#           |
#           |------> (tco_min+trce_dly_min)
#           |------------> (tco_max+trce_dly_max)
#         __________      ________________    
# data    __________XXXXXX_____ Data _____XXXXXXX
#
set_input_delay -clock $fwclk -max [expr $tco_max + $sdram_trce_dly_max] [get_ports -filter { NAME =~  "*dataQ*" && DIRECTION == "INOUT" }];
set_input_delay -clock $fwclk -min [expr $tco_min + $sdram_trce_dly_min] [get_ports -filter { NAME =~  "*dataQ*" && DIRECTION == "INOUT" }];

set_multicycle_path -setup -end -from [get_ports "*dataQ*"] 2

## IO REGISTERS
set_property IOB TRUE [all_inputs];
set_property IOB TRUE [all_outputs];