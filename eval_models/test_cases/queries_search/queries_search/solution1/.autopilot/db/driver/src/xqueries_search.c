// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xqueries_search.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XQueries_search_CfgInitialize(XQueries_search *InstancePtr, XQueries_search_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XQueries_search_Start(XQueries_search *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQueries_search_ReadReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_AP_CTRL) & 0x80;
    XQueries_search_WriteReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XQueries_search_IsDone(XQueries_search *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQueries_search_ReadReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XQueries_search_IsIdle(XQueries_search *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQueries_search_ReadReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XQueries_search_IsReady(XQueries_search *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQueries_search_ReadReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XQueries_search_EnableAutoRestart(XQueries_search *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQueries_search_WriteReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XQueries_search_DisableAutoRestart(XQueries_search *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQueries_search_WriteReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_AP_CTRL, 0);
}

void XQueries_search_Set_targets(XQueries_search *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQueries_search_WriteReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_TARGETS_DATA, (u32)(Data));
    XQueries_search_WriteReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_TARGETS_DATA + 4, (u32)(Data >> 32));
}

u64 XQueries_search_Get_targets(XQueries_search *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQueries_search_ReadReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_TARGETS_DATA);
    Data += (u64)XQueries_search_ReadReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_TARGETS_DATA + 4) << 32;
    return Data;
}

void XQueries_search_Set_queries(XQueries_search *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQueries_search_WriteReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_QUERIES_DATA, (u32)(Data));
    XQueries_search_WriteReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_QUERIES_DATA + 4, (u32)(Data >> 32));
}

u64 XQueries_search_Get_queries(XQueries_search *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQueries_search_ReadReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_QUERIES_DATA);
    Data += (u64)XQueries_search_ReadReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_QUERIES_DATA + 4) << 32;
    return Data;
}

void XQueries_search_Set_indices(XQueries_search *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQueries_search_WriteReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_INDICES_DATA, (u32)(Data));
    XQueries_search_WriteReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_INDICES_DATA + 4, (u32)(Data >> 32));
}

u64 XQueries_search_Get_indices(XQueries_search *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQueries_search_ReadReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_INDICES_DATA);
    Data += (u64)XQueries_search_ReadReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_INDICES_DATA + 4) << 32;
    return Data;
}

void XQueries_search_InterruptGlobalEnable(XQueries_search *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQueries_search_WriteReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_GIE, 1);
}

void XQueries_search_InterruptGlobalDisable(XQueries_search *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQueries_search_WriteReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_GIE, 0);
}

void XQueries_search_InterruptEnable(XQueries_search *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQueries_search_ReadReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_IER);
    XQueries_search_WriteReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_IER, Register | Mask);
}

void XQueries_search_InterruptDisable(XQueries_search *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQueries_search_ReadReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_IER);
    XQueries_search_WriteReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_IER, Register & (~Mask));
}

void XQueries_search_InterruptClear(XQueries_search *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQueries_search_WriteReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_ISR, Mask);
}

u32 XQueries_search_InterruptGetEnabled(XQueries_search *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQueries_search_ReadReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_IER);
}

u32 XQueries_search_InterruptGetStatus(XQueries_search *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQueries_search_ReadReg(InstancePtr->Control_BaseAddress, XQUERIES_SEARCH_CONTROL_ADDR_ISR);
}

