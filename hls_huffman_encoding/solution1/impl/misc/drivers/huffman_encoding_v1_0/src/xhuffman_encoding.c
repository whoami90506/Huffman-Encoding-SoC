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

void XHuffman_encoding_Start(XHuffman_encoding *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHuffman_encoding_ReadReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_AP_CTRL) & 0x80;
    XHuffman_encoding_WriteReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHuffman_encoding_IsDone(XHuffman_encoding *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHuffman_encoding_ReadReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHuffman_encoding_IsIdle(XHuffman_encoding *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHuffman_encoding_ReadReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHuffman_encoding_IsReady(XHuffman_encoding *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHuffman_encoding_ReadReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHuffman_encoding_EnableAutoRestart(XHuffman_encoding *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHuffman_encoding_WriteReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XHuffman_encoding_DisableAutoRestart(XHuffman_encoding *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHuffman_encoding_WriteReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_AP_CTRL, 0);
}

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

u32 XHuffman_encoding_Get_symbol_histogram_value_V_BaseAddress(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_BASE);
}

u32 XHuffman_encoding_Get_symbol_histogram_value_V_HighAddress(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_HIGH);
}

u32 XHuffman_encoding_Get_symbol_histogram_value_V_TotalBytes(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_BASE + 1);
}

u32 XHuffman_encoding_Get_symbol_histogram_value_V_BitWidth(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHUFFMAN_ENCODING_AXILITES_WIDTH_SYMBOL_HISTOGRAM_VALUE_V;
}

u32 XHuffman_encoding_Get_symbol_histogram_value_V_Depth(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHUFFMAN_ENCODING_AXILITES_DEPTH_SYMBOL_HISTOGRAM_VALUE_V;
}

u32 XHuffman_encoding_Write_symbol_histogram_value_V_Words(XHuffman_encoding *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XHuffman_encoding_Read_symbol_histogram_value_V_Words(XHuffman_encoding *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_BASE + (offset + i)*4);
    }
    return length;
}

u32 XHuffman_encoding_Write_symbol_histogram_value_V_Bytes(XHuffman_encoding *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XHuffman_encoding_Read_symbol_histogram_value_V_Bytes(XHuffman_encoding *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_VALUE_V_BASE + offset + i);
    }
    return length;
}

u32 XHuffman_encoding_Get_symbol_histogram_frequency_V_BaseAddress(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_BASE);
}

u32 XHuffman_encoding_Get_symbol_histogram_frequency_V_HighAddress(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_HIGH);
}

u32 XHuffman_encoding_Get_symbol_histogram_frequency_V_TotalBytes(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_BASE + 1);
}

u32 XHuffman_encoding_Get_symbol_histogram_frequency_V_BitWidth(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHUFFMAN_ENCODING_AXILITES_WIDTH_SYMBOL_HISTOGRAM_FREQUENCY_V;
}

u32 XHuffman_encoding_Get_symbol_histogram_frequency_V_Depth(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHUFFMAN_ENCODING_AXILITES_DEPTH_SYMBOL_HISTOGRAM_FREQUENCY_V;
}

u32 XHuffman_encoding_Write_symbol_histogram_frequency_V_Words(XHuffman_encoding *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XHuffman_encoding_Read_symbol_histogram_frequency_V_Words(XHuffman_encoding *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_BASE + (offset + i)*4);
    }
    return length;
}

u32 XHuffman_encoding_Write_symbol_histogram_frequency_V_Bytes(XHuffman_encoding *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XHuffman_encoding_Read_symbol_histogram_frequency_V_Bytes(XHuffman_encoding *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_SYMBOL_HISTOGRAM_FREQUENCY_V_BASE + offset + i);
    }
    return length;
}

u32 XHuffman_encoding_Get_encoding_V_BaseAddress(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_BASE);
}

u32 XHuffman_encoding_Get_encoding_V_HighAddress(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_HIGH);
}

u32 XHuffman_encoding_Get_encoding_V_TotalBytes(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_BASE + 1);
}

u32 XHuffman_encoding_Get_encoding_V_BitWidth(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHUFFMAN_ENCODING_AXILITES_WIDTH_ENCODING_V;
}

u32 XHuffman_encoding_Get_encoding_V_Depth(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHUFFMAN_ENCODING_AXILITES_DEPTH_ENCODING_V;
}

u32 XHuffman_encoding_Write_encoding_V_Words(XHuffman_encoding *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XHuffman_encoding_Read_encoding_V_Words(XHuffman_encoding *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_BASE + (offset + i)*4);
    }
    return length;
}

u32 XHuffman_encoding_Write_encoding_V_Bytes(XHuffman_encoding *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XHuffman_encoding_Read_encoding_V_Bytes(XHuffman_encoding *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_HIGH - XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XHUFFMAN_ENCODING_AXILITES_ADDR_ENCODING_V_BASE + offset + i);
    }
    return length;
}

void XHuffman_encoding_InterruptGlobalEnable(XHuffman_encoding *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHuffman_encoding_WriteReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_GIE, 1);
}

void XHuffman_encoding_InterruptGlobalDisable(XHuffman_encoding *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHuffman_encoding_WriteReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_GIE, 0);
}

void XHuffman_encoding_InterruptEnable(XHuffman_encoding *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHuffman_encoding_ReadReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_IER);
    XHuffman_encoding_WriteReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_IER, Register | Mask);
}

void XHuffman_encoding_InterruptDisable(XHuffman_encoding *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHuffman_encoding_ReadReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_IER);
    XHuffman_encoding_WriteReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_IER, Register & (~Mask));
}

void XHuffman_encoding_InterruptClear(XHuffman_encoding *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHuffman_encoding_WriteReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_ISR, Mask);
}

u32 XHuffman_encoding_InterruptGetEnabled(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHuffman_encoding_ReadReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_IER);
}

u32 XHuffman_encoding_InterruptGetStatus(XHuffman_encoding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHuffman_encoding_ReadReg(InstancePtr->Axilites_BaseAddress, XHUFFMAN_ENCODING_AXILITES_ADDR_ISR);
}

