// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0xc00 : Data signal of num_nonzero_symbols
//         bit 31~0 - num_nonzero_symbols[31:0] (Read)
// 0xc04 : Control signal of num_nonzero_symbols
//         bit 0  - num_nonzero_symbols_ap_vld (Read/COR)
//         others - reserved
// 0x200 ~
// 0x3ff : Memory 'symbol_histogram_value_V' (256 * 9b)
//         Word n : bit [ 8: 0] - symbol_histogram_value_V[2n]
//                  bit [24:16] - symbol_histogram_value_V[2n+1]
//                  others      - reserved
// 0x400 ~
// 0x7ff : Memory 'symbol_histogram_frequency_V' (256 * 32b)
//         Word n : bit [31:0] - symbol_histogram_frequency_V[n]
// 0x800 ~
// 0xbff : Memory 'encoding_V' (256 * 32b)
//         Word n : bit [31:0] - encoding_V[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XHUFFMAN_ENCODING_AXILITES_ADDR_AP_CTRL                           0x000
#define XHUFFMAN_ENCODING_AXILITES_ADDR_GIE                               0x004
#define XHUFFMAN_ENCODING_AXILITES_ADDR_IER                               0x008
#define XHUFFMAN_ENCODING_AXILITES_ADDR_ISR                               0x00c
#define XHUFFMAN_ENCODING_AXILITES_ADDR_NUM_NONZERO_SYMBOLS_DATA          0xc00
#define XHUFFMAN_ENCODING_AXILITES_BITS_NUM_NONZERO_SYMBOLS_DATA          32
#define XHUFFMAN_ENCODING_AXILITES_ADDR_NUM_NONZERO_SYMBOLS_CTRL          0xc04
#define XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_BASE     0x200
#define XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_HIGH     0x3ff
#define XHUFFMAN_ENCODING_AXILITES_WIDTH_SYMBOL_HISTOGRAM_VALUE_V         9
#define XHUFFMAN_ENCODING_AXILITES_DEPTH_SYMBOL_HISTOGRAM_VALUE_V         256
#define XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_BASE 0x400
#define XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_HIGH 0x7ff
#define XHUFFMAN_ENCODING_AXILITES_WIDTH_SYMBOL_HISTOGRAM_FREQUENCY_V     32
#define XHUFFMAN_ENCODING_AXILITES_DEPTH_SYMBOL_HISTOGRAM_FREQUENCY_V     256
#define XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_BASE                   0x800
#define XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_HIGH                   0xbff
#define XHUFFMAN_ENCODING_AXILITES_WIDTH_ENCODING_V                       32
#define XHUFFMAN_ENCODING_AXILITES_DEPTH_ENCODING_V                       256

