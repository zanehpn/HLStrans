// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xqs.h"

extern XQs_Config XQs_ConfigTable[];

XQs_Config *XQs_LookupConfig(u16 DeviceId) {
	XQs_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XQS_NUM_INSTANCES; Index++) {
		if (XQs_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XQs_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XQs_Initialize(XQs *InstancePtr, u16 DeviceId) {
	XQs_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XQs_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XQs_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

