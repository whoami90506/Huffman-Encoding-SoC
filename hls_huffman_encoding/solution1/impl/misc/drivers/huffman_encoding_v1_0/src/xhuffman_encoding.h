// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XHUFFMAN_ENCODING_H
#define XHUFFMAN_ENCODING_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xhuffman_encoding_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XHuffman_encoding_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XHuffman_encoding;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHuffman_encoding_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHuffman_encoding_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHuffman_encoding_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHuffman_encoding_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XHuffman_encoding_Initialize(XHuffman_encoding *InstancePtr, u16 DeviceId);
XHuffman_encoding_Config* XHuffman_encoding_LookupConfig(u16 DeviceId);
int XHuffman_encoding_CfgInitialize(XHuffman_encoding *InstancePtr, XHuffman_encoding_Config *ConfigPtr);
#else
int XHuffman_encoding_Initialize(XHuffman_encoding *InstancePtr, const char* InstanceName);
int XHuffman_encoding_Release(XHuffman_encoding *InstancePtr);
#endif

void XHuffman_encoding_Start(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_IsDone(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_IsIdle(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_IsReady(XHuffman_encoding *InstancePtr);
void XHuffman_encoding_EnableAutoRestart(XHuffman_encoding *InstancePtr);
void XHuffman_encoding_DisableAutoRestart(XHuffman_encoding *InstancePtr);

u32 XHuffman_encoding_Get_num_nonzero_symbols(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Get_num_nonzero_symbols_vld(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Get_symbol_histogram_value_V_BaseAddress(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Get_symbol_histogram_value_V_HighAddress(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Get_symbol_histogram_value_V_TotalBytes(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Get_symbol_histogram_value_V_BitWidth(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Get_symbol_histogram_value_V_Depth(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Write_symbol_histogram_value_V_Words(XHuffman_encoding *InstancePtr, int offset, int *data, int length);
u32 XHuffman_encoding_Read_symbol_histogram_value_V_Words(XHuffman_encoding *InstancePtr, int offset, int *data, int length);
u32 XHuffman_encoding_Write_symbol_histogram_value_V_Bytes(XHuffman_encoding *InstancePtr, int offset, char *data, int length);
u32 XHuffman_encoding_Read_symbol_histogram_value_V_Bytes(XHuffman_encoding *InstancePtr, int offset, char *data, int length);
u32 XHuffman_encoding_Get_symbol_histogram_frequency_V_BaseAddress(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Get_symbol_histogram_frequency_V_HighAddress(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Get_symbol_histogram_frequency_V_TotalBytes(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Get_symbol_histogram_frequency_V_BitWidth(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Get_symbol_histogram_frequency_V_Depth(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Write_symbol_histogram_frequency_V_Words(XHuffman_encoding *InstancePtr, int offset, int *data, int length);
u32 XHuffman_encoding_Read_symbol_histogram_frequency_V_Words(XHuffman_encoding *InstancePtr, int offset, int *data, int length);
u32 XHuffman_encoding_Write_symbol_histogram_frequency_V_Bytes(XHuffman_encoding *InstancePtr, int offset, char *data, int length);
u32 XHuffman_encoding_Read_symbol_histogram_frequency_V_Bytes(XHuffman_encoding *InstancePtr, int offset, char *data, int length);
u32 XHuffman_encoding_Get_encoding_V_BaseAddress(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Get_encoding_V_HighAddress(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Get_encoding_V_TotalBytes(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Get_encoding_V_BitWidth(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Get_encoding_V_Depth(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_Write_encoding_V_Words(XHuffman_encoding *InstancePtr, int offset, int *data, int length);
u32 XHuffman_encoding_Read_encoding_V_Words(XHuffman_encoding *InstancePtr, int offset, int *data, int length);
u32 XHuffman_encoding_Write_encoding_V_Bytes(XHuffman_encoding *InstancePtr, int offset, char *data, int length);
u32 XHuffman_encoding_Read_encoding_V_Bytes(XHuffman_encoding *InstancePtr, int offset, char *data, int length);

void XHuffman_encoding_InterruptGlobalEnable(XHuffman_encoding *InstancePtr);
void XHuffman_encoding_InterruptGlobalDisable(XHuffman_encoding *InstancePtr);
void XHuffman_encoding_InterruptEnable(XHuffman_encoding *InstancePtr, u32 Mask);
void XHuffman_encoding_InterruptDisable(XHuffman_encoding *InstancePtr, u32 Mask);
void XHuffman_encoding_InterruptClear(XHuffman_encoding *InstancePtr, u32 Mask);
u32 XHuffman_encoding_InterruptGetEnabled(XHuffman_encoding *InstancePtr);
u32 XHuffman_encoding_InterruptGetStatus(XHuffman_encoding *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
