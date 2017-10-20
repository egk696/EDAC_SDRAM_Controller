----------------------------------------------------------------------------------
-- Created By: Eleftherios Kyriakakis
-- 
-- Design Name: SDRAM Controller with SEU EDAC (Error-Detection-And-Correction) mechanisms
-- Module Name: sdram_ctrl_port_fixed_arbiter - behave
-- Project Name: SEUD-MIST KTH Royal Institute Of Technology
-- Tested Devices:
-- 	FPGA: Cyclone IV, Artix-7
--	Memories:  IS42/45S16320B, IS42/45R86400D/16320D/32160D, IS42/45S86400D/16320D/32160D, IS42/45SM/RM/VM16160K 
-- Comments:
-- 	Currently supports only two interfaces
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sdram_ctrl_port_fixed_arbiter is
	generic(
        DATA_WIDTH : Integer := 16;
        DQM_WIDTH : Integer := 2;
        ROW_WIDTH : Integer := 13;
		COLS_WIDTH : Integer := 9;
        BANK_WIDTH : Integer := 2
    );
	port(
		--Global
		clk : in std_logic := '0';
		rstn : in std_logic := '1';
		--Avalon Interface
        avs_address : in std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1) downto 0) := (others=>'0');
		avs_read : in std_logic := '0';
		avs_readdata : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		avs_write : in std_logic := '0';
		--avs_byteen : in std_logic_vector((DATA_WIDTH/8)-1 downto 0) := (others=>'0');
		avs_writedata : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		avs_waitrequest : out std_logic := '0';
		avs_readdatavalid : out std_logic := '0';
		
		--Direct access interface
		dma_address : in std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1) downto 0) := (others=>'0');
		dma_read : in std_logic := '0';
		dma_readdata : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		dma_write : in std_logic := '0';
		--dma_byteen : in std_logic_vector((DATA_WIDTH/8)-1 downto 0) := (others=>'0');
		dma_writedata : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
		dma_waitrequest : out std_logic := '0';
		dma_readdatavalid : out std_logic := '0';

		--Arbitrated access signals
 		ram_address : out std_logic_vector((BANK_WIDTH+ROW_WIDTH+COLS_WIDTH-1) downto 0) := (others=>'0');
 		ram_read : out std_logic := '0';
 		ram_readdata : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
 		ram_write : out std_logic := '0';
 		--arb_byteen : out std_logic_vector((DATA_WIDTH/8)-1 downto 0) := (others=>'0');
 		ram_writedata : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
 		ram_waitrequest : in std_logic := '0';
 		ram_readdatavalid : in std_logic := '0'
	);
end sdram_ctrl_port_fixed_arbiter;

architecture behave of sdram_ctrl_port_fixed_arbiter is

--signal arb_grant : std_logic_vector(1 downto 0) := "00";
signal cpu_req, dma_req : std_logic := '0';
signal cpu_busy, dma_busy : std_logic := '0';

signal arb_cpu_grant : std_logic;--CPU is 0 index
signal arb_dma_grant : std_logic; --DMA is 1 index

begin

--request
cpu_req <= avs_write or avs_read;
dma_req <= dma_write or dma_read;

cpu_busy <= (ram_waitrequest or not(arb_cpu_grant)) and cpu_req;
dma_busy <= (ram_waitrequest or not(arb_dma_grant)) and dma_req;

--fixed arbitration
fixed_arb: process(clk, rstn, arb_dma_grant, arb_cpu_grant, arb_dma_grant, dma_req, cpu_req, cpu_busy, dma_busy)
begin
	if rising_edge(clk) then
		arb_cpu_grant <= (cpu_req or cpu_busy) and not(arb_dma_grant);
		arb_dma_grant <= (dma_req or dma_busy) and not(arb_cpu_grant) and not(cpu_req);
	end if;
end process;

avs_waitrequest <= cpu_busy;
dma_waitrequest <= dma_busy;

--mux
ram_address <=	avs_address when arb_cpu_grant='1' else 
				dma_address when arb_dma_grant='1' else (others=>'0');

ram_writedata <=	avs_writedata when arb_cpu_grant='1' else 
					dma_writedata when arb_dma_grant='1' else (others=>'0');

--ram_byteen <=	avs_byteen when arb_cpu_grant='1' else 
--				dma_byteen when arb_dma_grant='1';


--demux
demux_signals: process(arb_cpu_grant, arb_dma_grant, ram_readdatavalid, ram_readdata)
	variable arb_grant : std_logic_vector(1 downto 0) := (others=>'0');
begin
	arb_grant := arb_dma_grant & arb_cpu_grant; 
	case arb_grant is
		when "01"=>
			avs_readdatavalid <= ram_readdatavalid;
			avs_readdata <= ram_readdata;
			dma_readdatavalid <= '0';
			dma_readdata <= (others=>'0');
		when "10"=>
			avs_readdatavalid <= '0';
			avs_readdata <= (others=>'0');
			dma_readdatavalid <= ram_readdatavalid;
			dma_readdata <= ram_readdata;
		when others=>
			avs_readdatavalid <= '0';
			avs_readdata <= (others=>'0');
			dma_readdatavalid <= '0';
			dma_readdata <= (others=>'0');
	end case;
end process;


end behave;