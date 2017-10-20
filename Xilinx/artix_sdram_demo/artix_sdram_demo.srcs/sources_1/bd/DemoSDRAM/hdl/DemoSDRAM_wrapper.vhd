--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Fri Oct 20 02:43:03 2017
--Host        : EMA-VAIO running 64-bit major release  (build 9200)
--Command     : generate_target DemoSDRAM_wrapper.bd
--Design      : DemoSDRAM_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DemoSDRAM_wrapper is
  port (
    addr_o : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bank_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cas_o : out STD_LOGIC;
    cke_o : out STD_LOGIC;
    clk_sdram : out STD_LOGIC;
    clk_shared : in STD_LOGIC;
    cs_o : out STD_LOGIC;
    dataQ_io : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    dqm_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ras_o : out STD_LOGIC;
    status_led : out STD_LOGIC;
    we_o : out STD_LOGIC
  );
end DemoSDRAM_wrapper;

architecture STRUCTURE of DemoSDRAM_wrapper is
  component DemoSDRAM is
  port (
    clk_shared : in STD_LOGIC;
    cke_o : out STD_LOGIC;
    bank_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    addr_o : out STD_LOGIC_VECTOR ( 12 downto 0 );
    cs_o : out STD_LOGIC;
    ras_o : out STD_LOGIC;
    cas_o : out STD_LOGIC;
    we_o : out STD_LOGIC;
    dqm_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dataQ_io : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    status_led : out STD_LOGIC;
    clk_sdram : out STD_LOGIC
  );
  end component DemoSDRAM;
begin
DemoSDRAM_i: component DemoSDRAM
     port map (
      addr_o(12 downto 0) => addr_o(12 downto 0),
      bank_o(1 downto 0) => bank_o(1 downto 0),
      cas_o => cas_o,
      cke_o => cke_o,
      clk_sdram => clk_sdram,
      clk_shared => clk_shared,
      cs_o => cs_o,
      dataQ_io(15 downto 0) => dataQ_io(15 downto 0),
      dqm_o(1 downto 0) => dqm_o(1 downto 0),
      ras_o => ras_o,
      status_led => status_led,
      we_o => we_o
    );
end STRUCTURE;
