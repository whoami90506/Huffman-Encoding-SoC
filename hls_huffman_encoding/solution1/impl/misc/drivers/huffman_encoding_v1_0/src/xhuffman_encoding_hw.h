// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of num_nonzero_symbols
//        bit 31~0 - num_nonzero_symbols[31:0] (Read)
// 0x14 : Control signal of num_nonzero_symbols
//        bit 0  - num_nonzero_symbols_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XHUFFMAN_ENCODING_AXILITES_ADDR_NUM_NONZERO_SYMBOLS_DATA 0x10
#define XHUFFMAN_ENCODING_AXILITES_BITS_NUM_NONZERO_SYMBOLS_DATA 32
#define XHUFFMAN_ENCODING_AXILITES_ADDR_NUM_NONZERO_SYMBOLS_CTRL 0x14

