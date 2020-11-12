open_project hls_huffman_encoding -reset
add_files {huffman_canonize_tree.cpp huffman_create_tree.cpp huffman_filter.cpp huffman_compute_bit_length.cpp huffman_encoding.cpp huffman_sort.cpp huffman_create_codeword.cpp huffman_truncate_tree.cpp}

add_files -tb {huffman_encoding_test.cpp}
add_files -tb {huffman.random256.txt huffman.random256.golden}
set_top huffman_encoding
#set_top create_tree

open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 5 -name default
config_export -format ip_catalog -rtl verilog
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog