// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xkalman_filter.h"

extern XKalman_filter_Config XKalman_filter_ConfigTable[];

XKalman_filter_Config *XKalman_filter_LookupConfig(u16 DeviceId) {
	XKalman_filter_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKALMAN_FILTER_NUM_INSTANCES; Index++) {
		if (XKalman_filter_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKalman_filter_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKalman_filter_Initialize(XKalman_filter *InstancePtr, u16 DeviceId) {
	XKalman_filter_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKalman_filter_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKalman_filter_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

