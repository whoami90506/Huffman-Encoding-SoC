// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xhuffman_encoding.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHuffman_encoding_CfgInitialize(XHuffman_encoding *InstancePtr, XHuffman_encoding_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

u32 XHuffman_encoding_Get_num_nonzero_symbols(XHuffman_encoding *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHuffman_encoding_ReadReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_NUM_NONZERO_SYMBOLS_DATA);
    return Data;
}

u32 XHuffman_encoding_Get_num_nonzero_symbols_vld(XHuffman_encoding *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHuffman_encoding_ReadReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_NUM_NONZERO_SYMBOLS_CTRL);
    return Data & 0x1;
}

