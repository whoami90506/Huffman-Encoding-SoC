-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Nov 19 04:05:35 2020
-- Host        : Chengde-DELL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Workspace/huffman_encoding_fpga/vvd_huffman_encoding/vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_huffman_encoding_0_0/design_1_huffman_encoding_0_0_stub.vhdl
-- Design      : design_1_huffman_encoding_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_huffman_encoding_0_0 is
  Port ( 
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    symbol_histogram_value_V_TVALID : in STD_LOGIC;
    symbol_histogram_value_V_TREADY : out STD_LOGIC;
    symbol_histogram_value_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    symbol_histogram_frequency_V_TVALID : in STD_LOGIC;
    symbol_histogram_frequency_V_TREADY : out STD_LOGIC;
    symbol_histogram_frequency_V_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    encoding_V_TVALID : out STD_LOGIC;
    encoding_V_TREADY : in STD_LOGIC;
    encoding_V_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_huffman_encoding_0_0;

architecture stub of design_1_huffman_encoding_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_AXILiteS_AWADDR[4:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[4:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,symbol_histogram_value_V_TVALID,symbol_histogram_value_V_TREADY,symbol_histogram_value_V_TDATA[15:0],symbol_histogram_frequency_V_TVALID,symbol_histogram_frequency_V_TREADY,symbol_histogram_frequency_V_TDATA[31:0],encoding_V_TVALID,encoding_V_TREADY,encoding_V_TDATA[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "huffman_encoding,Vivado 2019.2";
begin
end;
