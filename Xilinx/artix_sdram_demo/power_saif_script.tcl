add_force {/DemoSDRAM_wrapper/clk_shared} -radix hex {1 0ns} {0 41666ps} -repeat_every 83333ps
run 3ms
open_saif "idle_scrub_64.saif"
set curr_xsim_wave_scope [current_scope]
current_scope /DemoSDRAM_wrapper/DemoSDRAM_i/sdram_ctrl_tmr_avs_0/U0/sdram_ctrl_tmr_inst
log_saif [get_objects -r *]
run 3ms
close_saif