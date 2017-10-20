--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Mon Aug 07 19:15:29 2017
--Host        : EMA-VAIO running 64-bit major release  (build 9200)
--Command     : generate_target avs_testbench_wrapper.bd
--Design      : avs_testbench_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity avs_testbench_wrapper is
  port (
    addr_o : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bank_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cas_o : out STD_LOGIC;
    cke_o : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    core_ext_start : in STD_LOGIC;
    cs_o : out STD_LOGIC;
    dataQ_io : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    dqm_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    err_counter_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    err_detect_o : out STD_LOGIC;
    healing_proc_run_o : out STD_LOGIC;
    mem_ready_o : out STD_LOGIC;
    ras_o : out STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    scrubbing_proc_run_o : out STD_LOGIC;
    voted_data_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    we_o : out STD_LOGIC
  );
end avs_testbench_wrapper;

architecture STRUCTURE of avs_testbench_wrapper is
  component avs_testbench is
  port (
    clk_100MHz : in STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    core_ext_start : in STD_LOGIC;
    cke_o : out STD_LOGIC;
    bank_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    addr_o : out STD_LOGIC_VECTOR ( 12 downto 0 );
    cs_o : out STD_LOGIC;
    ras_o : out STD_LOGIC;
    cas_o : out STD_LOGIC;
    we_o : out STD_LOGIC;
    dqm_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dataQ_io : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    mem_ready_o : out STD_LOGIC;
    err_detect_o : out STD_LOGIC;
    err_counter_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    voted_data_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    scrubbing_proc_run_o : out STD_LOGIC;
    healing_proc_run_o : out STD_LOGIC
  );
  end component avs_testbench;
begin
avs_testbench_i: component avs_testbench
     port map (
      addr_o(12 downto 0) => addr_o(12 downto 0),
      bank_o(1 downto 0) => bank_o(1 downto 0),
      cas_o => cas_o,
      cke_o => cke_o,
      clk_100MHz => clk_100MHz,
      core_ext_start => core_ext_start,
      cs_o => cs_o,
      dataQ_io(15 downto 0) => dataQ_io(15 downto 0),
      dqm_o(1 downto 0) => dqm_o(1 downto 0),
      err_counter_o(15 downto 0) => err_counter_o(15 downto 0),
      err_detect_o => err_detect_o,
      healing_proc_run_o => healing_proc_run_o,
      mem_ready_o => mem_ready_o,
      ras_o => ras_o,
      reset_rtl => reset_rtl,
      scrubbing_proc_run_o => scrubbing_proc_run_o,
      voted_data_o(15 downto 0) => voted_data_o(15 downto 0),
      we_o => we_o
    );
end STRUCTURE;
