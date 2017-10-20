
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity EDAC_SDRAM_Controller_Demo_Top is
	PORT (
		KEY : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		CLOCK_50 : IN STD_LOGIC;
		HEX7,HEX6,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0 : OUT std_logic_vector(6 downto 0);
		LEDR : OUT STD_LOGIC_VECTOR(17 downto 0);
		LEDG : OUT STD_LOGIC_VECTOR(8 downto 0);
		LCD_E, LCD_RS, LCD_RW : OUT STD_LOGIC;
		LCD_DATA_IO : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		
		DRAM_CLK, DRAM_CKE : OUT STD_LOGIC;
		DRAM_ADDR : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		DRAM_BA_0, DRAM_BA_1 : OUT STD_LOGIC;
		DRAM_CS_N, DRAM_CAS_N, DRAM_RAS_N, DRAM_WE_N : OUT STD_LOGIC;
		DRAM_DQ : INOUT STD_LOGIC_VECTOR(31 downto 0);
		DRAM_DQM : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
end EDAC_SDRAM_Controller_Demo_Top;

architecture behave of EDAC_SDRAM_Controller_Demo_Top is
--components
component EDAC_SDRAM_Controller_Demo is
port (
	debug_err_counter_o        : out   std_logic_vector(31 downto 0);                    -- err_counter_o
	debug_err_detect_o         : out   std_logic;                                        -- err_detect_o
	debug_healing_proc_run_o   : out   std_logic;                                        -- healing_proc_run_o
	debug_mem_ready_o          : out   std_logic;                                        -- mem_ready_o
	debug_scrubbing_proc_run_o : out   std_logic;                                        -- scrubbing_proc_run_o
	debug_voted_data_o         : out   std_logic_vector(31 downto 0);                    -- voted_data_o
	sdram_cke_o                : out   std_logic;                                        -- cke_o
	sdram_bank_o               : out   std_logic_vector(1 downto 0);                     -- bank_o
	sdram_addr_o               : out   std_logic_vector(12 downto 0);                    -- addr_o
	sdram_cs_o                 : out   std_logic;                                        -- cs_o
	sdram_ras_o                : out   std_logic;                                        -- ras_o
	sdram_cas_o                : out   std_logic;                                        -- cas_o
	sdram_we_o                 : out   std_logic;                                        -- we_o
	sdram_dqm_o                : out   std_logic_vector(3 downto 0);                     -- dqm_o
	sdram_dataQ_io             : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dataQ_io
	sevensegment_hex7          : out   std_logic_vector(6 downto 0);                     -- hex7
	sevensegment_hex6          : out   std_logic_vector(6 downto 0);                     -- hex6
	sevensegment_hex5          : out   std_logic_vector(6 downto 0);                     -- hex5
	sevensegment_hex4          : out   std_logic_vector(6 downto 0);                     -- hex4
	sevensegment_hex3          : out   std_logic_vector(6 downto 0);                     -- hex3
	sevensegment_hex2          : out   std_logic_vector(6 downto 0);                     -- hex2
	sevensegment_hex1          : out   std_logic_vector(6 downto 0);                     -- hex1
	sevensegment_hex0          : out   std_logic_vector(6 downto 0);                     -- hex0
	sys_clk_clk                : in    std_logic                     := 'X';             -- clk
	sys_rst_reset_n            : in    std_logic                     := 'X'              -- reset_n
);
end component EDAC_SDRAM_Controller_Demo;

component PLL_2OUT IS
	PORT
	(
		areset		: IN STD_LOGIC  := '0';
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		c1		: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC 
	);
END component;

signal ba : std_logic_vector(1 downto 0);
signal addr : std_logic_vector(12 downto 0);
signal err_detect, mem_ready : std_logic := '0';

signal healing_proc_running, scrubbing_proc_running : std_logic := '0';
signal voted_data, error_count : std_logic_vector(31 downto 0) := (others=>'0');  

signal pll_sys_clock_wire, pll_locked_wire, pll_sdram_clock_wire : std_logic := '0';

begin

DRAM_CLK <= pll_sdram_clock_wire;
DRAM_BA_0 <= ba(0);
DRAM_BA_1 <= ba(1);
DRAM_ADDR <= addr;

LEDR(14 downto 0) <= ba & addr;
LEDR(16 downto 17) <= (others=>'0');

LEDG(0) <= mem_ready;
LEDG(1) <= healing_proc_running nand scrubbing_proc_running;
LEDG(2) <= scrubbing_proc_running;
LEDG(3) <= healing_proc_running;
LEDG(7 downto 4) <= (others=>'0');
LEDG(8) <= err_detect;

PLL_2OUT_inst : PLL_2OUT PORT MAP (
	areset	 => not(KEY(0)),
	inclk0	 => CLOCK_50,
	c0	 => pll_sdram_clock_wire,
	c1	 => pll_sys_clock_wire,
	locked	 => pll_locked_wire
);

demosys_inst : component EDAC_SDRAM_Controller_Demo
port map (
	debug_err_counter_o        => open,        --        debug.err_counter_o
	debug_err_detect_o         => err_detect,         --             .err_detect_o
	debug_healing_proc_run_o   => healing_proc_running,   --             .healing_proc_run_o
	debug_mem_ready_o          => mem_ready,          --             .mem_ready_o
	debug_scrubbing_proc_run_o => scrubbing_proc_running, --             .scrubbing_proc_run_o
	debug_voted_data_o         => open,         --             .voted_data_o
	sdram_cke_o                => DRAM_CKE,                --        sdram.cke_o
	sdram_bank_o               => ba,    --             .bank_o
	sdram_addr_o               => addr,               --             .addr_o
	sdram_cs_o                 => DRAM_CS_N,                 --             .cs_o
	sdram_ras_o                => DRAM_RAS_N,                --             .ras_o
	sdram_cas_o                => DRAM_CAS_N,                --             .cas_o
	sdram_we_o                 => DRAM_WE_N,                 --             .we_o
	sdram_dqm_o                => DRAM_DQM,                --             .dqm_o
	sdram_dataQ_io             => DRAM_DQ,             --             .dataQ_io
	sevensegment_hex7          => HEX7,          -- sevensegment.hex7
	sevensegment_hex6          => HEX6,          --             .hex6
	sevensegment_hex5          => HEX5,          --             .hex5
	sevensegment_hex4          => HEX4,          --             .hex4
	sevensegment_hex3          => HEX3,          --             .hex3
	sevensegment_hex2          => HEX2,          --             .hex2
	sevensegment_hex1          => HEX1,          --             .hex1
	sevensegment_hex0          => HEX0,          --             .hex0
	sys_clk_clk                => pll_sys_clock_wire,                --      sys_clk.clk
	sys_rst_reset_n            => pll_locked_wire             --      sys_rst.reset_n
);

end;