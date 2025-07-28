// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xkalman_filter.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKalman_filter_CfgInitialize(XKalman_filter *InstancePtr, XKalman_filter_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKalman_filter_Set_in_r(XKalman_filter *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKalman_filter_WriteReg(InstancePtr->Control_BaseAddress, XKALMAN_FILTER_CONTROL_ADDR_IN_R_DATA, (u32)(Data));
    XKalman_filter_WriteReg(InstancePtr->Control_BaseAddress, XKALMAN_FILTER_CONTROL_ADDR_IN_R_DATA + 4, (u32)(Data >> 32));
}

u64 XKalman_filter_Get_in_r(XKalman_filter *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKalman_filter_ReadReg(InstancePtr->Control_BaseAddress, XKALMAN_FILTER_CONTROL_ADDR_IN_R_DATA);
    Data += (u64)XKalman_filter_ReadReg(InstancePtr->Control_BaseAddress, XKALMAN_FILTER_CONTROL_ADDR_IN_R_DATA + 4) << 32;
    return Data;
}

void XKalman_filter_Set_out_r(XKalman_filter *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKalman_filter_WriteReg(InstancePtr->Control_BaseAddress, XKALMAN_FILTER_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XKalman_filter_WriteReg(InstancePtr->Control_BaseAddress, XKALMAN_FILTER_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XKalman_filter_Get_out_r(XKalman_filter *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKalman_filter_ReadReg(InstancePtr->Control_BaseAddress, XKALMAN_FILTER_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XKalman_filter_ReadReg(InstancePtr->Control_BaseAddress, XKALMAN_FILTER_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

