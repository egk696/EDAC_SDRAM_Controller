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

	u0 : component EDAC_SDRAM_Controller_Demo
		port map (
			debug_err_counter_o        => CONNECTED_TO_debug_err_counter_o,        --        debug.err_counter_o
			debug_err_detect_o         => CONNECTED_TO_debug_err_detect_o,         --             .err_detect_o
			debug_healing_proc_run_o   => CONNECTED_TO_debug_healing_proc_run_o,   --             .healing_proc_run_o
			debug_mem_ready_o          => CONNECTED_TO_debug_mem_ready_o,          --             .mem_ready_o
			debug_scrubbing_proc_run_o => CONNECTED_TO_debug_scrubbing_proc_run_o, --             .scrubbing_proc_run_o
			debug_voted_data_o         => CONNECTED_TO_debug_voted_data_o,         --             .voted_data_o
			sdram_cke_o                => CONNECTED_TO_sdram_cke_o,                --        sdram.cke_o
			sdram_bank_o               => CONNECTED_TO_sdram_bank_o,               --             .bank_o
			sdram_addr_o               => CONNECTED_TO_sdram_addr_o,               --             .addr_o
			sdram_cs_o                 => CONNECTED_TO_sdram_cs_o,                 --             .cs_o
			sdram_ras_o                => CONNECTED_TO_sdram_ras_o,                --             .ras_o
			sdram_cas_o                => CONNECTED_TO_sdram_cas_o,                --             .cas_o
			sdram_we_o                 => CONNECTED_TO_sdram_we_o,                 --             .we_o
			sdram_dqm_o                => CONNECTED_TO_sdram_dqm_o,                --             .dqm_o
			sdram_dataQ_io             => CONNECTED_TO_sdram_dataQ_io,             --             .dataQ_io
			sevensegment_hex7          => CONNECTED_TO_sevensegment_hex7,          -- sevensegment.hex7
			sevensegment_hex6          => CONNECTED_TO_sevensegment_hex6,          --             .hex6
			sevensegment_hex5          => CONNECTED_TO_sevensegment_hex5,          --             .hex5
			sevensegment_hex4          => CONNECTED_TO_sevensegment_hex4,          --             .hex4
			sevensegment_hex3          => CONNECTED_TO_sevensegment_hex3,          --             .hex3
			sevensegment_hex2          => CONNECTED_TO_sevensegment_hex2,          --             .hex2
			sevensegment_hex1          => CONNECTED_TO_sevensegment_hex1,          --             .hex1
			sevensegment_hex0          => CONNECTED_TO_sevensegment_hex0,          --             .hex0
			sys_clk_clk                => CONNECTED_TO_sys_clk_clk,                --      sys_clk.clk
			sys_rst_reset_n            => CONNECTED_TO_sys_rst_reset_n             --      sys_rst.reset_n
		);

