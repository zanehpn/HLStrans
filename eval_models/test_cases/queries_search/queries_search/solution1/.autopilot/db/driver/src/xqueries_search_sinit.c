// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xqueries_search.h"

extern XQueries_search_Config XQueries_search_ConfigTable[];

XQueries_search_Config *XQueries_search_LookupConfig(u16 DeviceId) {
	XQueries_search_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XQUERIES_SEARCH_NUM_INSTANCES; Index++) {
		if (XQueries_search_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XQueries_search_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XQueries_search_Initialize(XQueries_search *InstancePtr, u16 DeviceId) {
	XQueries_search_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XQueries_search_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XQueries_search_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

