// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Nov 25 18:38:26 2020
// Host        : Chengde-DELL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Workspace/huffman_encoding_fpga/vvd_huffman_encoding/vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_huffman_encoding_0_1/design_1_huffman_encoding_0_1_stub.v
// Design      : design_1_huffman_encoding_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "huffman_encoding,Vivado 2019.2" *)
module design_1_huffman_encoding_0_1(s_axi_AXILiteS_AWADDR, 
  s_axi_AXILiteS_AWVALID, s_axi_AXILiteS_AWREADY, s_axi_AXILiteS_WDATA, 
  s_axi_AXILiteS_WSTRB, s_axi_AXILiteS_WVALID, s_axi_AXILiteS_WREADY, 
  s_axi_AXILiteS_BRESP, s_axi_AXILiteS_BVALID, s_axi_AXILiteS_BREADY, 
  s_axi_AXILiteS_ARADDR, s_axi_AXILiteS_ARVALID, s_axi_AXILiteS_ARREADY, 
  s_axi_AXILiteS_RDATA, s_axi_AXILiteS_RRESP, s_axi_AXILiteS_RVALID, 
  s_axi_AXILiteS_RREADY, ap_clk, ap_rst_n, interrupt, symbol_histogram_TVALID, 
  symbol_histogram_TREADY, symbol_histogram_TDATA, symbol_histogram_TKEEP, 
  symbol_histogram_TSTRB, symbol_histogram_TUSER, symbol_histogram_TLAST, 
  symbol_histogram_TID, symbol_histogram_TDEST, encoding_TVALID, encoding_TREADY, 
  encoding_TDATA, encoding_TKEEP, encoding_TSTRB, encoding_TUSER, encoding_TLAST, 
  encoding_TID, encoding_TDEST)
/* synthesis syn_black_box black_box_pad_pin="s_axi_AXILiteS_AWADDR[4:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[4:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,symbol_histogram_TVALID,symbol_histogram_TREADY,symbol_histogram_TDATA[47:0],symbol_histogram_TKEEP[5:0],symbol_histogram_TSTRB[5:0],symbol_histogram_TUSER[0:0],symbol_histogram_TLAST[0:0],symbol_histogram_TID[0:0],symbol_histogram_TDEST[0:0],encoding_TVALID,encoding_TREADY,encoding_TDATA[31:0],encoding_TKEEP[3:0],encoding_TSTRB[3:0],encoding_TUSER[0:0],encoding_TLAST[0:0],encoding_TID[0:0],encoding_TDEST[0:0]" */;
  input [4:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  output [1:0]s_axi_AXILiteS_BRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  input [4:0]s_axi_AXILiteS_ARADDR;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input symbol_histogram_TVALID;
  output symbol_histogram_TREADY;
  input [47:0]symbol_histogram_TDATA;
  input [5:0]symbol_histogram_TKEEP;
  input [5:0]symbol_histogram_TSTRB;
  input [0:0]symbol_histogram_TUSER;
  input [0:0]symbol_histogram_TLAST;
  input [0:0]symbol_histogram_TID;
  input [0:0]symbol_histogram_TDEST;
  output encoding_TVALID;
  input encoding_TREADY;
  output [31:0]encoding_TDATA;
  output [3:0]encoding_TKEEP;
  output [3:0]encoding_TSTRB;
  output [0:0]encoding_TUSER;
  output [0:0]encoding_TLAST;
  output [0:0]encoding_TID;
  output [0:0]encoding_TDEST;
endmodule
