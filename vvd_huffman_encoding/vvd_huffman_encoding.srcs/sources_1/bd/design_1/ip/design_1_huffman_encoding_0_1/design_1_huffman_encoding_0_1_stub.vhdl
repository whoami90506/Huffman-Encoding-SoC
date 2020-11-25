-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Nov 25 18:10:13 2020
-- Host        : Chengde-DELL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Workspace/huffman_encoding_fpga/vvd_huffman_encoding/vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_huffman_encoding_0_1/design_1_huffman_encoding_0_1_stub.vhdl
-- Design      : design_1_huffman_encoding_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_huffman_encoding_0_1 is
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
    symbol_histogram_TVALID : in STD_LOGIC;
    symbol_histogram_TREADY : out STD_LOGIC;
    symbol_histogram_TDATA : in STD_LOGIC_VECTOR ( 47 downto 0 );
    symbol_histogram_TKEEP : in STD_LOGIC_VECTOR ( 5 downto 0 );
    symbol_histogram_TSTRB : in STD_LOGIC_VECTOR ( 5 downto 0 );
    symbol_histogram_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    symbol_histogram_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    symbol_histogram_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    symbol_histogram_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    encoding_TVALID : out STD_LOGIC;
    encoding_TREADY : in STD_LOGIC;
    encoding_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    encoding_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    encoding_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    encoding_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    encoding_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    encoding_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    encoding_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_huffman_encoding_0_1;

architecture stub of design_1_huffman_encoding_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_AXILiteS_AWADDR[4:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[4:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,symbol_histogram_TVALID,symbol_histogram_TREADY,symbol_histogram_TDATA[47:0],symbol_histogram_TKEEP[5:0],symbol_histogram_TSTRB[5:0],symbol_histogram_TUSER[0:0],symbol_histogram_TLAST[0:0],symbol_histogram_TID[0:0],symbol_histogram_TDEST[0:0],encoding_TVALID,encoding_TREADY,encoding_TDATA[31:0],encoding_TKEEP[3:0],encoding_TSTRB[3:0],encoding_TUSER[0:0],encoding_TLAST[0:0],encoding_TID[0:0],encoding_TDEST[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "huffman_encoding,Vivado 2019.2";
begin
end;
