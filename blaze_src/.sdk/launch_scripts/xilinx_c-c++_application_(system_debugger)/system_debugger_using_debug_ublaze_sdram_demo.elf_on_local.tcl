connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent JTAG-HS3 210299A1F4EC"} -index 0
loadhw D:/Development/SEUD-MIST/SEUD/4_SDRTMRController/blaze_src/DemoSDRAM_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent JTAG-HS3 210299A1F4EC"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent JTAG-HS3 210299A1F4EC"} -index 0
dow D:/Development/SEUD-MIST/SEUD/4_SDRTMRController/blaze_src/ublaze_sdram_demo/Debug/ublaze_sdram_demo.elf
bpadd -addr &main
