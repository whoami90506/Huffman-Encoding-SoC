vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_6
vlib activehdl/processing_system7_vip_v1_0_8
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/lib_fifo_v1_0_14
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_22
vlib activehdl/axi_sg_v4_1_13
vlib activehdl/axi_dma_v7_1_21
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_20
vlib activehdl/axi_data_fifo_v2_1_19
vlib activehdl/axi_crossbar_v2_1_21
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_protocol_converter_v2_1_20
vlib activehdl/axi_clock_converter_v2_1_19
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/axi_dwidth_converter_v2_1_20

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 activehdl/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 activehdl/processing_system7_vip_v1_0_8
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 activehdl/lib_fifo_v1_0_14
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_22 activehdl/axi_datamover_v5_1_22
vmap axi_sg_v4_1_13 activehdl/axi_sg_v4_1_13
vmap axi_dma_v7_1_21 activehdl/axi_dma_v7_1_21
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_20 activehdl/axi_register_slice_v2_1_20
vmap axi_data_fifo_v2_1_19 activehdl/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 activehdl/axi_crossbar_v2_1_21
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_20 activehdl/axi_protocol_converter_v2_1_20
vmap axi_clock_converter_v2_1_19 activehdl/axi_clock_converter_v2_1_19
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_20 activehdl/axi_dwidth_converter_v2_1_20

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/Block_huffman_encodi.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/Block_proc.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/canonize_tree.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/compute_bit_length.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/compute_bit_lengtjbC.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/compute_bit_lengtkbM.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/create_codeword.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/create_codeword_flbW.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/create_tree.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/create_tree_frequhbi.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/create_tree_frequibs.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/fifo_w9_d2_A.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/fifo_w9_d3_A.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/fifo_w9_d5_A.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/fifo_w9_d256_A.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/fifo_w32_d256_A.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/fifo_w41_d256_A.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/filter.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_Aem.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_Aem_memcore.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_AXILiteS_s_axi.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_Bew.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_Bew_memcore.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_DeQ.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_DeQ_memcore.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_g8j.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_mb6.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_mb6_memcore.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_ncg.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_ncg_memcore.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_rcU.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_rcU_memcore.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_udo.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_udo_memcore.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_wdI.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding_wdI_memcore.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/Loop_copy_sorted_pro.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/Loop_read_stream_pro.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/regslice_core.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/sort.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/sort_current_digifYi.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/sort_previous_sorbkb.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/sort_previous_sorcud.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/start_for_Block_hEe0.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/start_for_Block_pGfk.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/start_for_create_Ffa.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/start_for_filter_U0.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/truncate_tree.v" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c826/hdl/verilog/huffman_encoding.v" \
"../../../bd/design_1/ip/design_1_huffman_encoding_0_1/sim/design_1_huffman_encoding_0_1.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6  -sv2k12 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8  -sv2k12 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_1/sim/design_1_processing_system7_0_1.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_22 -93 \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/1e40/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_13 -93 \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_21 -93 \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec2a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_dma_0_1/sim/design_1_axi_dma_0_1.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_2/sim/design_1_xbar_2.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_1/sim/design_1_rst_ps7_0_100M_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_3/sim/design_1_xbar_3.v" \

vlog -work axi_protocol_converter_v2_1_20  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_19  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/9e81/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_20  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/d394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../vvd_huffman_encoding.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" "+incdir+D:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

