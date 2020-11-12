############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_huffman_encoding
set_top huffman_encoding
add_files huffman_canonize_tree.cpp
add_files huffman_create_tree.cpp
add_files huffman_filter.cpp
add_files huffman_compute_bit_length.cpp
add_files huffman_encoding.cpp
add_files huffman_sort.cpp
add_files huffman_create_codeword.cpp
add_files huffman_truncate_tree.cpp
add_files -tb huffman.random256.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb huffman.random256.golden -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb huffman_encoding_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1}
create_clock -period 5 -name default
config_export -format ip_catalog -rtl verilog
#source "./hls_huffman_encoding/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
