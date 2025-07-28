// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcompute_near.h"

extern XCompute_near_Config XCompute_near_ConfigTable[];

XCompute_near_Config *XCompute_near_LookupConfig(u16 DeviceId) {
	XCompute_near_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCOMPUTE_NEAR_NUM_INSTANCES; Index++) {
		if (XCompute_near_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCompute_near_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCompute_near_Initialize(XCompute_near *InstancePtr, u16 DeviceId) {
	XCompute_near_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCompute_near_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCompute_near_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

