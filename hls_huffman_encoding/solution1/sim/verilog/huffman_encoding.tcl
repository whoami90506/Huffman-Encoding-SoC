
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set encoding_group [add_wave_group encoding(axis) -into $coutputgroup]
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/encoding_TREADY -into $encoding_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/encoding_TVALID -into $encoding_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/encoding_TDEST -into $encoding_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/encoding_TID -into $encoding_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/encoding_TLAST -into $encoding_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/encoding_TUSER -into $encoding_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/encoding_TSTRB -into $encoding_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/encoding_TKEEP -into $encoding_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/encoding_TDATA -into $encoding_group -radix hex
set num_nonzero_symbols__return_group [add_wave_group num_nonzero_symbols__return(axi_slave) -into $coutputgroup]
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/interrupt -into $num_nonzero_symbols__return_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_BRESP -into $num_nonzero_symbols__return_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_BREADY -into $num_nonzero_symbols__return_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_BVALID -into $num_nonzero_symbols__return_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_RRESP -into $num_nonzero_symbols__return_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_RDATA -into $num_nonzero_symbols__return_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_RREADY -into $num_nonzero_symbols__return_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_RVALID -into $num_nonzero_symbols__return_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_ARREADY -into $num_nonzero_symbols__return_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_ARVALID -into $num_nonzero_symbols__return_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_ARADDR -into $num_nonzero_symbols__return_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_WSTRB -into $num_nonzero_symbols__return_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_WDATA -into $num_nonzero_symbols__return_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_WREADY -into $num_nonzero_symbols__return_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_WVALID -into $num_nonzero_symbols__return_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_AWREADY -into $num_nonzero_symbols__return_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_AWVALID -into $num_nonzero_symbols__return_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/s_axi_AXILiteS_AWADDR -into $num_nonzero_symbols__return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set symbol_histogram_group [add_wave_group symbol_histogram(axis) -into $cinputgroup]
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/symbol_histogram_TREADY -into $symbol_histogram_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/symbol_histogram_TVALID -into $symbol_histogram_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/symbol_histogram_TDEST -into $symbol_histogram_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/symbol_histogram_TID -into $symbol_histogram_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/symbol_histogram_TLAST -into $symbol_histogram_group -color #ffff00 -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/symbol_histogram_TUSER -into $symbol_histogram_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/symbol_histogram_TSTRB -into $symbol_histogram_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/symbol_histogram_TKEEP -into $symbol_histogram_group -radix hex
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/symbol_histogram_TDATA -into $symbol_histogram_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_huffman_encoding_top/AESL_inst_huffman_encoding/ap_clk -into $clockgroup
save_wave_config huffman_encoding.wcfg
run all
quit

