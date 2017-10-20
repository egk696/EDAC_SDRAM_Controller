--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Mon Aug 07 19:15:29 2017
--Host        : EMA-VAIO running 64-bit major release  (build 9200)
--Command     : generate_target avs_testbench.bd
--Design      : avs_testbench
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_3J3YYV is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_3J3YYV;

architecture STRUCTURE of s00_couplers_imp_3J3YYV is
  component avs_testbench_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component avs_testbench_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(0) <= s00_couplers_to_auto_pc_BID(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(0) <= s00_couplers_to_auto_pc_RID(0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(0) <= S_AXI_arid(0);
  s00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(0) <= S_AXI_awid(0);
  s00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component avs_testbench_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(0) => s00_couplers_to_auto_pc_ARID(0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(0) => s00_couplers_to_auto_pc_AWID(0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(0) => s00_couplers_to_auto_pc_BID(0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(0) => s00_couplers_to_auto_pc_RID(0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity avs_testbench_axi_traffic_gen_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end avs_testbench_axi_traffic_gen_0_axi_periph_0;

architecture STRUCTURE of avs_testbench_axi_traffic_gen_0_axi_periph_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_ACLK_net : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_traffic_gen_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_ARREADY : STD_LOGIC;
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_ARVALID : STD_LOGIC;
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_AWREADY : STD_LOGIC;
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_AWVALID : STD_LOGIC;
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_BREADY : STD_LOGIC;
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_BVALID : STD_LOGIC;
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_RREADY : STD_LOGIC;
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_RVALID : STD_LOGIC;
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_WREADY : STD_LOGIC;
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_traffic_gen_0_axi_periph_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_axi_traffic_gen_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_axi_traffic_gen_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_axi_traffic_gen_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_axi_traffic_gen_0_axi_periph_AWVALID;
  M00_AXI_bready <= s00_couplers_to_axi_traffic_gen_0_axi_periph_BREADY;
  M00_AXI_rready <= s00_couplers_to_axi_traffic_gen_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_axi_traffic_gen_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= s00_couplers_to_axi_traffic_gen_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_axi_traffic_gen_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_traffic_gen_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_traffic_gen_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(0) <= axi_traffic_gen_0_axi_periph_to_s00_couplers_BID(0);
  S00_AXI_bresp(1 downto 0) <= axi_traffic_gen_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_traffic_gen_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_traffic_gen_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(0) <= axi_traffic_gen_0_axi_periph_to_s00_couplers_RID(0);
  S00_AXI_rlast <= axi_traffic_gen_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_traffic_gen_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_traffic_gen_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_traffic_gen_0_axi_periph_to_s00_couplers_WREADY;
  axi_traffic_gen_0_axi_periph_ACLK_net <= M00_ACLK;
  axi_traffic_gen_0_axi_periph_ARESETN_net <= M00_ARESETN;
  axi_traffic_gen_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_ARID(0) <= S00_AXI_arid(0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_ARLOCK(0) <= S00_AXI_arlock(0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_traffic_gen_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_AWID(0) <= S00_AXI_awid(0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_AWLOCK(0) <= S00_AXI_awlock(0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_traffic_gen_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_traffic_gen_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_traffic_gen_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_traffic_gen_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_traffic_gen_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_axi_traffic_gen_0_axi_periph_ARREADY <= M00_AXI_arready;
  s00_couplers_to_axi_traffic_gen_0_axi_periph_AWREADY <= M00_AXI_awready;
  s00_couplers_to_axi_traffic_gen_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_axi_traffic_gen_0_axi_periph_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_axi_traffic_gen_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_axi_traffic_gen_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_axi_traffic_gen_0_axi_periph_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_axi_traffic_gen_0_axi_periph_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_3J3YYV
     port map (
      M_ACLK => axi_traffic_gen_0_axi_periph_ACLK_net,
      M_ARESETN => axi_traffic_gen_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_axi_traffic_gen_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => s00_couplers_to_axi_traffic_gen_0_axi_periph_ARREADY,
      M_AXI_arvalid => s00_couplers_to_axi_traffic_gen_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_axi_traffic_gen_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => s00_couplers_to_axi_traffic_gen_0_axi_periph_AWREADY,
      M_AXI_awvalid => s00_couplers_to_axi_traffic_gen_0_axi_periph_AWVALID,
      M_AXI_bready => s00_couplers_to_axi_traffic_gen_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_axi_traffic_gen_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_axi_traffic_gen_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_axi_traffic_gen_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_axi_traffic_gen_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_axi_traffic_gen_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_axi_traffic_gen_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_axi_traffic_gen_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_axi_traffic_gen_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_axi_traffic_gen_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_axi_traffic_gen_0_axi_periph_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_traffic_gen_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_traffic_gen_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_traffic_gen_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_traffic_gen_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_BID(0),
      S_AXI_bready => axi_traffic_gen_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_traffic_gen_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_RID(0),
      S_AXI_rlast => axi_traffic_gen_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => axi_traffic_gen_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_traffic_gen_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_traffic_gen_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => axi_traffic_gen_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_traffic_gen_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_traffic_gen_0_axi_periph_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity avs_testbench is
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
  attribute core_generation_info : string;
  attribute core_generation_info of avs_testbench : entity is "avs_testbench,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=avs_testbench,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=8,numReposBlks=6,numNonXlnxBlks=1,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=1,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of avs_testbench : entity is "avs_testbench.hwdef";
end avs_testbench;

architecture STRUCTURE of avs_testbench is
  component avs_testbench_axi_amm_bridge_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    avm_address : out STD_LOGIC_VECTOR ( 23 downto 0 );
    avm_write : out STD_LOGIC;
    avm_read : out STD_LOGIC;
    avm_writedata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_readdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_waitrequest : in STD_LOGIC
  );
  end component avs_testbench_axi_amm_bridge_0_0;
  component avs_testbench_axi_traffic_gen_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    core_ext_start : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wlast : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    irq_out : out STD_LOGIC
  );
  end component avs_testbench_axi_traffic_gen_0_0;
  component avs_testbench_rst_clk_100MHz_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component avs_testbench_rst_clk_100MHz_100M_0;
  component avs_testbench_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component avs_testbench_xlconstant_0_0;
  component avs_testbench_sdram_ctrl_tmr_avalon_0_0 is
  port (
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
    healing_proc_run_o : out STD_LOGIC;
    avs_address : in STD_LOGIC_VECTOR ( 23 downto 0 );
    avs_read : in STD_LOGIC;
    avs_readdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avs_write : in STD_LOGIC;
    avs_writedata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avs_readdatavalid : out STD_LOGIC;
    avs_waitrequest : out STD_LOGIC;
    rsi_reset_n : in STD_LOGIC;
    csi_clock : in STD_LOGIC
  );
  end component avs_testbench_sdram_ctrl_tmr_avalon_0_0;
  signal Net : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_amm_bridge_0_M_AVALON_ADDRESS : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axi_amm_bridge_0_M_AVALON_READ : STD_LOGIC;
  signal axi_amm_bridge_0_M_AVALON_READDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_amm_bridge_0_M_AVALON_WAITREQUEST : STD_LOGIC;
  signal axi_amm_bridge_0_M_AVALON_WRITE : STD_LOGIC;
  signal axi_amm_bridge_0_M_AVALON_WRITEDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_traffic_gen_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_traffic_gen_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_traffic_gen_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_traffic_gen_0_M_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_traffic_gen_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_traffic_gen_0_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_traffic_gen_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_traffic_gen_0_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_traffic_gen_0_M_AXI_ARREADY : STD_LOGIC;
  signal axi_traffic_gen_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_traffic_gen_0_M_AXI_ARVALID : STD_LOGIC;
  signal axi_traffic_gen_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_traffic_gen_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_traffic_gen_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_traffic_gen_0_M_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_traffic_gen_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_traffic_gen_0_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_traffic_gen_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_traffic_gen_0_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_traffic_gen_0_M_AXI_AWREADY : STD_LOGIC;
  signal axi_traffic_gen_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_traffic_gen_0_M_AXI_AWVALID : STD_LOGIC;
  signal axi_traffic_gen_0_M_AXI_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_traffic_gen_0_M_AXI_BREADY : STD_LOGIC;
  signal axi_traffic_gen_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_traffic_gen_0_M_AXI_BVALID : STD_LOGIC;
  signal axi_traffic_gen_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_traffic_gen_0_M_AXI_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_traffic_gen_0_M_AXI_RLAST : STD_LOGIC;
  signal axi_traffic_gen_0_M_AXI_RREADY : STD_LOGIC;
  signal axi_traffic_gen_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_traffic_gen_0_M_AXI_RVALID : STD_LOGIC;
  signal axi_traffic_gen_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_traffic_gen_0_M_AXI_WLAST : STD_LOGIC;
  signal axi_traffic_gen_0_M_AXI_WREADY : STD_LOGIC;
  signal axi_traffic_gen_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_traffic_gen_0_M_AXI_WVALID : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_traffic_gen_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_traffic_gen_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_traffic_gen_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_traffic_gen_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_traffic_gen_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_traffic_gen_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal axi_traffic_gen_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_traffic_gen_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal clk_100MHz_1 : STD_LOGIC;
  signal core_ext_start_1 : STD_LOGIC;
  signal reset_rtl_1 : STD_LOGIC;
  signal rst_clk_100MHz_100M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_100MHz_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sdram_ctrl_tmr_avalon_0_addr_o : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal sdram_ctrl_tmr_avalon_0_bank_o : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sdram_ctrl_tmr_avalon_0_cas_o : STD_LOGIC;
  signal sdram_ctrl_tmr_avalon_0_cke_o : STD_LOGIC;
  signal sdram_ctrl_tmr_avalon_0_cs_o : STD_LOGIC;
  signal sdram_ctrl_tmr_avalon_0_dqm_o : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sdram_ctrl_tmr_avalon_0_err_counter_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sdram_ctrl_tmr_avalon_0_err_detect_o : STD_LOGIC;
  signal sdram_ctrl_tmr_avalon_0_healing_proc_run_o : STD_LOGIC;
  signal sdram_ctrl_tmr_avalon_0_mem_ready_o : STD_LOGIC;
  signal sdram_ctrl_tmr_avalon_0_ras_o : STD_LOGIC;
  signal sdram_ctrl_tmr_avalon_0_scrubbing_proc_run_o : STD_LOGIC;
  signal sdram_ctrl_tmr_avalon_0_voted_data_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sdram_ctrl_tmr_avalon_0_we_o : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_traffic_gen_0_irq_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_traffic_gen_0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_axi_traffic_gen_0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_rst_clk_100MHz_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_100MHz_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_100MHz_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_sdram_ctrl_tmr_avalon_0_avs_readdatavalid_UNCONNECTED : STD_LOGIC;
begin
  addr_o(12 downto 0) <= sdram_ctrl_tmr_avalon_0_addr_o(12 downto 0);
  bank_o(1 downto 0) <= sdram_ctrl_tmr_avalon_0_bank_o(1 downto 0);
  cas_o <= sdram_ctrl_tmr_avalon_0_cas_o;
  cke_o <= sdram_ctrl_tmr_avalon_0_cke_o;
  clk_100MHz_1 <= clk_100MHz;
  core_ext_start_1 <= core_ext_start;
  cs_o <= sdram_ctrl_tmr_avalon_0_cs_o;
  dqm_o(1 downto 0) <= sdram_ctrl_tmr_avalon_0_dqm_o(1 downto 0);
  err_counter_o(15 downto 0) <= sdram_ctrl_tmr_avalon_0_err_counter_o(15 downto 0);
  err_detect_o <= sdram_ctrl_tmr_avalon_0_err_detect_o;
  healing_proc_run_o <= sdram_ctrl_tmr_avalon_0_healing_proc_run_o;
  mem_ready_o <= sdram_ctrl_tmr_avalon_0_mem_ready_o;
  ras_o <= sdram_ctrl_tmr_avalon_0_ras_o;
  reset_rtl_1 <= reset_rtl;
  scrubbing_proc_run_o <= sdram_ctrl_tmr_avalon_0_scrubbing_proc_run_o;
  voted_data_o(15 downto 0) <= sdram_ctrl_tmr_avalon_0_voted_data_o(15 downto 0);
  we_o <= sdram_ctrl_tmr_avalon_0_we_o;
axi_amm_bridge_0: component avs_testbench_axi_amm_bridge_0_0
     port map (
      avm_address(23 downto 0) => axi_amm_bridge_0_M_AVALON_ADDRESS(23 downto 0),
      avm_read => axi_amm_bridge_0_M_AVALON_READ,
      avm_readdata(31 downto 0) => axi_amm_bridge_0_M_AVALON_READDATA(31 downto 0),
      avm_waitrequest => axi_amm_bridge_0_M_AVALON_WAITREQUEST,
      avm_write => axi_amm_bridge_0_M_AVALON_WRITE,
      avm_writedata(31 downto 0) => axi_amm_bridge_0_M_AVALON_WRITEDATA(31 downto 0),
      s_axi_aclk => clk_100MHz_1,
      s_axi_araddr(23 downto 0) => axi_traffic_gen_0_axi_periph_M00_AXI_ARADDR(23 downto 0),
      s_axi_aresetn => rst_clk_100MHz_100M_peripheral_aresetn(0),
      s_axi_arready => axi_traffic_gen_0_axi_periph_M00_AXI_ARREADY,
      s_axi_arvalid => axi_traffic_gen_0_axi_periph_M00_AXI_ARVALID,
      s_axi_awaddr(23 downto 0) => axi_traffic_gen_0_axi_periph_M00_AXI_AWADDR(23 downto 0),
      s_axi_awready => axi_traffic_gen_0_axi_periph_M00_AXI_AWREADY,
      s_axi_awvalid => axi_traffic_gen_0_axi_periph_M00_AXI_AWVALID,
      s_axi_bready => axi_traffic_gen_0_axi_periph_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_traffic_gen_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_traffic_gen_0_axi_periph_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_traffic_gen_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_traffic_gen_0_axi_periph_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_traffic_gen_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_traffic_gen_0_axi_periph_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_traffic_gen_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_traffic_gen_0_axi_periph_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_traffic_gen_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_traffic_gen_0_axi_periph_M00_AXI_WVALID
    );
axi_traffic_gen_0: component avs_testbench_axi_traffic_gen_0_0
     port map (
      core_ext_start => core_ext_start_1,
      irq_out => NLW_axi_traffic_gen_0_irq_out_UNCONNECTED,
      m_axi_araddr(31 downto 0) => axi_traffic_gen_0_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => axi_traffic_gen_0_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_traffic_gen_0_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(0) => axi_traffic_gen_0_M_AXI_ARID(0),
      m_axi_arlen(7 downto 0) => axi_traffic_gen_0_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => axi_traffic_gen_0_M_AXI_ARLOCK(0),
      m_axi_arprot(2 downto 0) => axi_traffic_gen_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => axi_traffic_gen_0_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => axi_traffic_gen_0_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => axi_traffic_gen_0_M_AXI_ARSIZE(2 downto 0),
      m_axi_aruser(7 downto 0) => NLW_axi_traffic_gen_0_m_axi_aruser_UNCONNECTED(7 downto 0),
      m_axi_arvalid => axi_traffic_gen_0_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_traffic_gen_0_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => axi_traffic_gen_0_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_traffic_gen_0_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(0) => axi_traffic_gen_0_M_AXI_AWID(0),
      m_axi_awlen(7 downto 0) => axi_traffic_gen_0_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => axi_traffic_gen_0_M_AXI_AWLOCK(0),
      m_axi_awprot(2 downto 0) => axi_traffic_gen_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => axi_traffic_gen_0_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => axi_traffic_gen_0_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => axi_traffic_gen_0_M_AXI_AWSIZE(2 downto 0),
      m_axi_awuser(7 downto 0) => NLW_axi_traffic_gen_0_m_axi_awuser_UNCONNECTED(7 downto 0),
      m_axi_awvalid => axi_traffic_gen_0_M_AXI_AWVALID,
      m_axi_bid(0) => axi_traffic_gen_0_M_AXI_BID(0),
      m_axi_bready => axi_traffic_gen_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_traffic_gen_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_traffic_gen_0_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => axi_traffic_gen_0_M_AXI_RDATA(31 downto 0),
      m_axi_rid(0) => axi_traffic_gen_0_M_AXI_RID(0),
      m_axi_rlast => axi_traffic_gen_0_M_AXI_RLAST,
      m_axi_rready => axi_traffic_gen_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_traffic_gen_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_traffic_gen_0_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => axi_traffic_gen_0_M_AXI_WDATA(31 downto 0),
      m_axi_wlast => axi_traffic_gen_0_M_AXI_WLAST,
      m_axi_wready => axi_traffic_gen_0_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => axi_traffic_gen_0_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => axi_traffic_gen_0_M_AXI_WVALID,
      s_axi_aclk => clk_100MHz_1,
      s_axi_aresetn => rst_clk_100MHz_100M_peripheral_aresetn(0)
    );
axi_traffic_gen_0_axi_periph: entity work.avs_testbench_axi_traffic_gen_0_axi_periph_0
     port map (
      ACLK => clk_100MHz_1,
      ARESETN => rst_clk_100MHz_100M_interconnect_aresetn(0),
      M00_ACLK => clk_100MHz_1,
      M00_ARESETN => rst_clk_100MHz_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_traffic_gen_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready => axi_traffic_gen_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_traffic_gen_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_traffic_gen_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready => axi_traffic_gen_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_traffic_gen_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => axi_traffic_gen_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_traffic_gen_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_traffic_gen_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_traffic_gen_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_traffic_gen_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_traffic_gen_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_traffic_gen_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_traffic_gen_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_traffic_gen_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_traffic_gen_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_traffic_gen_0_axi_periph_M00_AXI_WVALID,
      S00_ACLK => clk_100MHz_1,
      S00_ARESETN => rst_clk_100MHz_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => axi_traffic_gen_0_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_traffic_gen_0_M_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_traffic_gen_0_M_AXI_ARCACHE(3 downto 0),
      S00_AXI_arid(0) => axi_traffic_gen_0_M_AXI_ARID(0),
      S00_AXI_arlen(7 downto 0) => axi_traffic_gen_0_M_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => axi_traffic_gen_0_M_AXI_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => axi_traffic_gen_0_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => axi_traffic_gen_0_M_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => axi_traffic_gen_0_M_AXI_ARREADY,
      S00_AXI_arsize(2 downto 0) => axi_traffic_gen_0_M_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_traffic_gen_0_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_traffic_gen_0_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_traffic_gen_0_M_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_traffic_gen_0_M_AXI_AWCACHE(3 downto 0),
      S00_AXI_awid(0) => axi_traffic_gen_0_M_AXI_AWID(0),
      S00_AXI_awlen(7 downto 0) => axi_traffic_gen_0_M_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => axi_traffic_gen_0_M_AXI_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => axi_traffic_gen_0_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => axi_traffic_gen_0_M_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => axi_traffic_gen_0_M_AXI_AWREADY,
      S00_AXI_awsize(2 downto 0) => axi_traffic_gen_0_M_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_traffic_gen_0_M_AXI_AWVALID,
      S00_AXI_bid(0) => axi_traffic_gen_0_M_AXI_BID(0),
      S00_AXI_bready => axi_traffic_gen_0_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_traffic_gen_0_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_traffic_gen_0_M_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => axi_traffic_gen_0_M_AXI_RDATA(31 downto 0),
      S00_AXI_rid(0) => axi_traffic_gen_0_M_AXI_RID(0),
      S00_AXI_rlast => axi_traffic_gen_0_M_AXI_RLAST,
      S00_AXI_rready => axi_traffic_gen_0_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_traffic_gen_0_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_traffic_gen_0_M_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => axi_traffic_gen_0_M_AXI_WDATA(31 downto 0),
      S00_AXI_wlast => axi_traffic_gen_0_M_AXI_WLAST,
      S00_AXI_wready => axi_traffic_gen_0_M_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_traffic_gen_0_M_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => axi_traffic_gen_0_M_AXI_WVALID
    );
rst_clk_100MHz_100M: component avs_testbench_rst_clk_100MHz_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_clk_100MHz_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => xlconstant_0_dout(0),
      ext_reset_in => reset_rtl_1,
      interconnect_aresetn(0) => rst_clk_100MHz_100M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_clk_100MHz_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_100MHz_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_100MHz_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_100MHz_1
    );
sdram_ctrl_tmr_avalon_0: component avs_testbench_sdram_ctrl_tmr_avalon_0_0
     port map (
      addr_o(12 downto 0) => sdram_ctrl_tmr_avalon_0_addr_o(12 downto 0),
      avs_address(23 downto 0) => axi_amm_bridge_0_M_AVALON_ADDRESS(23 downto 0),
      avs_read => axi_amm_bridge_0_M_AVALON_READ,
      avs_readdata(31 downto 0) => axi_amm_bridge_0_M_AVALON_READDATA(31 downto 0),
      avs_readdatavalid => NLW_sdram_ctrl_tmr_avalon_0_avs_readdatavalid_UNCONNECTED,
      avs_waitrequest => axi_amm_bridge_0_M_AVALON_WAITREQUEST,
      avs_write => axi_amm_bridge_0_M_AVALON_WRITE,
      avs_writedata(31 downto 0) => axi_amm_bridge_0_M_AVALON_WRITEDATA(31 downto 0),
      bank_o(1 downto 0) => sdram_ctrl_tmr_avalon_0_bank_o(1 downto 0),
      cas_o => sdram_ctrl_tmr_avalon_0_cas_o,
      cke_o => sdram_ctrl_tmr_avalon_0_cke_o,
      cs_o => sdram_ctrl_tmr_avalon_0_cs_o,
      csi_clock => clk_100MHz_1,
      dataQ_io(15 downto 0) => dataQ_io(15 downto 0),
      dqm_o(1 downto 0) => sdram_ctrl_tmr_avalon_0_dqm_o(1 downto 0),
      err_counter_o(15 downto 0) => sdram_ctrl_tmr_avalon_0_err_counter_o(15 downto 0),
      err_detect_o => sdram_ctrl_tmr_avalon_0_err_detect_o,
      healing_proc_run_o => sdram_ctrl_tmr_avalon_0_healing_proc_run_o,
      mem_ready_o => sdram_ctrl_tmr_avalon_0_mem_ready_o,
      ras_o => sdram_ctrl_tmr_avalon_0_ras_o,
      rsi_reset_n => reset_rtl_1,
      scrubbing_proc_run_o => sdram_ctrl_tmr_avalon_0_scrubbing_proc_run_o,
      voted_data_o(15 downto 0) => sdram_ctrl_tmr_avalon_0_voted_data_o(15 downto 0),
      we_o => sdram_ctrl_tmr_avalon_0_we_o
    );
xlconstant_0: component avs_testbench_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
