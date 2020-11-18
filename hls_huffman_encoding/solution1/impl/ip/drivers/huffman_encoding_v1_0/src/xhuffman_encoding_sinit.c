// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhuffman_encoding.h"

extern XHuffman_encoding_Config XHuffman_encoding_ConfigTable[];

XHuffman_encoding_Config *XHuffman_encoding_LookupConfig(u16 DeviceId) {
	XHuffman_encoding_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHUFFMAN_ENCODING_NUM_INSTANCES; Index++) {
		if (XHuffman_encoding_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHuffman_encoding_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHuffman_encoding_Initialize(XHuffman_encoding *InstancePtr, u16 DeviceId) {
	XHuffman_encoding_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHuffman_encoding_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHuffman_encoding_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

