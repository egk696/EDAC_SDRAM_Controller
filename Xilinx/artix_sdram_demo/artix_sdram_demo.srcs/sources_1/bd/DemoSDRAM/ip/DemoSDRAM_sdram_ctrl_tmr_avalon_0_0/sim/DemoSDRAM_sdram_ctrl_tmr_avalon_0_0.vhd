-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: ekyr.kth.se:user:sdram_ctrl_tmr_avalon:1.0
-- IP Revision: 6

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY DemoSDRAM_sdram_ctrl_tmr_avalon_0_0 IS
  PORT (
    cke_o : OUT STD_LOGIC;
    bank_o : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    addr_o : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    cs_o : OUT STD_LOGIC;
    ras_o : OUT STD_LOGIC;
    cas_o : OUT STD_LOGIC;
    we_o : OUT STD_LOGIC;
    dqm_o : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    dataQ_io : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    mem_ready_o : OUT STD_LOGIC;
    err_detect_o : OUT STD_LOGIC;
    err_counter_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    voted_data_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    scrubbing_proc_run_o : OUT STD_LOGIC;
    healing_proc_run_o : OUT STD_LOGIC;
    avs_address : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    avs_read : IN STD_LOGIC;
    avs_readdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    avs_write : IN STD_LOGIC;
    avs_writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    avs_readdatavalid : OUT STD_LOGIC;
    avs_waitrequest : OUT STD_LOGIC;
    rsi_reset_n : IN STD_LOGIC;
    csi_clock : IN STD_LOGIC
  );
END DemoSDRAM_sdram_ctrl_tmr_avalon_0_0;

ARCHITECTURE DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_arch OF DemoSDRAM_sdram_ctrl_tmr_avalon_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT sdram_ctrl_tmr_avs_interface IS
    GENERIC (
      DATA_WIDTH : INTEGER;
      DQM_WIDTH : INTEGER;
      ROW_WIDTH : INTEGER;
      COLS_WIDTH : INTEGER;
      BANK_WIDTH : INTEGER;
      NOP_BOOT_CYCLES : INTEGER;
      REF_PERIOD : INTEGER;
      REF_COMMAND_COUNT : INTEGER;
      REF_COMMAND_PERIOD : INTEGER;
      PRECH_COMMAND_PERIOD : INTEGER;
      ACT_TO_RW_CYCLES : INTEGER;
      IN_DATA_TO_PRE : INTEGER;
      CAS_LAT_CYCLES : INTEGER;
      MODE_REG_CYCLES : INTEGER;
      BURST_LENGTH : INTEGER;
      DRIVE_STRENGTH : INTEGER;
      RAM_COLS : INTEGER;
      RAM_ROWS : INTEGER;
      RAM_BANKS : INTEGER;
      TMR_COLS : INTEGER;
      SCRUBBER_WAIT_CYCLES : INTEGER;
      EXT_MODE_REG_EN : BOOLEAN;
      GEN_ERR_INJ : BOOLEAN
    );
    PORT (
      cke_o : OUT STD_LOGIC;
      bank_o : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      addr_o : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      cs_o : OUT STD_LOGIC;
      ras_o : OUT STD_LOGIC;
      cas_o : OUT STD_LOGIC;
      we_o : OUT STD_LOGIC;
      dqm_o : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      dataQ_io : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      mem_ready_o : OUT STD_LOGIC;
      err_detect_o : OUT STD_LOGIC;
      err_counter_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      voted_data_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      scrubbing_proc_run_o : OUT STD_LOGIC;
      healing_proc_run_o : OUT STD_LOGIC;
      avs_address : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      avs_read : IN STD_LOGIC;
      avs_readdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      avs_write : IN STD_LOGIC;
      avs_writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      avs_readdatavalid : OUT STD_LOGIC;
      avs_waitrequest : OUT STD_LOGIC;
      rsi_reset_n : IN STD_LOGIC;
      csi_clock : IN STD_LOGIC
    );
  END COMPONENT sdram_ctrl_tmr_avs_interface;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF avs_address: SIGNAL IS "xilinx.com:interface:avalon:1.0 avs ADDRESS";
  ATTRIBUTE X_INTERFACE_INFO OF avs_read: SIGNAL IS "xilinx.com:interface:avalon:1.0 avs READ";
  ATTRIBUTE X_INTERFACE_INFO OF avs_readdata: SIGNAL IS "xilinx.com:interface:avalon:1.0 avs READDATA";
  ATTRIBUTE X_INTERFACE_INFO OF avs_write: SIGNAL IS "xilinx.com:interface:avalon:1.0 avs WRITE";
  ATTRIBUTE X_INTERFACE_INFO OF avs_writedata: SIGNAL IS "xilinx.com:interface:avalon:1.0 avs WRITEDATA";
  ATTRIBUTE X_INTERFACE_INFO OF avs_readdatavalid: SIGNAL IS "xilinx.com:interface:avalon:1.0 avs READDATAVALID";
  ATTRIBUTE X_INTERFACE_INFO OF avs_waitrequest: SIGNAL IS "xilinx.com:interface:avalon:1.0 avs WAITREQUEST";
  ATTRIBUTE X_INTERFACE_INFO OF rsi_reset_n: SIGNAL IS "xilinx.com:signal:reset:1.0 slave_rst RST";
  ATTRIBUTE X_INTERFACE_INFO OF csi_clock: SIGNAL IS "xilinx.com:signal:clock:1.0 slave_clk CLK";
BEGIN
  U0 : sdram_ctrl_tmr_avs_interface
    GENERIC MAP (
      DATA_WIDTH => 16,
      DQM_WIDTH => 2,
      ROW_WIDTH => 13,
      COLS_WIDTH => 9,
      BANK_WIDTH => 2,
      NOP_BOOT_CYCLES => 20000,
      REF_PERIOD => 32,
      REF_COMMAND_COUNT => 8,
      REF_COMMAND_PERIOD => 8,
      PRECH_COMMAND_PERIOD => 2,
      ACT_TO_RW_CYCLES => 2,
      IN_DATA_TO_PRE => 2,
      CAS_LAT_CYCLES => 2,
      MODE_REG_CYCLES => 2,
      BURST_LENGTH => 0,
      DRIVE_STRENGTH => 0,
      RAM_COLS => 512,
      RAM_ROWS => 8192,
      RAM_BANKS => 4,
      TMR_COLS => 384,
      SCRUBBER_WAIT_CYCLES => 64,
      EXT_MODE_REG_EN => true,
      GEN_ERR_INJ => false
    )
    PORT MAP (
      cke_o => cke_o,
      bank_o => bank_o,
      addr_o => addr_o,
      cs_o => cs_o,
      ras_o => ras_o,
      cas_o => cas_o,
      we_o => we_o,
      dqm_o => dqm_o,
      dataQ_io => dataQ_io,
      mem_ready_o => mem_ready_o,
      err_detect_o => err_detect_o,
      err_counter_o => err_counter_o,
      voted_data_o => voted_data_o,
      scrubbing_proc_run_o => scrubbing_proc_run_o,
      healing_proc_run_o => healing_proc_run_o,
      avs_address => avs_address,
      avs_read => avs_read,
      avs_readdata => avs_readdata,
      avs_write => avs_write,
      avs_writedata => avs_writedata,
      avs_readdatavalid => avs_readdatavalid,
      avs_waitrequest => avs_waitrequest,
      rsi_reset_n => rsi_reset_n,
      csi_clock => csi_clock
    );
END DemoSDRAM_sdram_ctrl_tmr_avalon_0_0_arch;
