// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcompute_near.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCompute_near_CfgInitialize(XCompute_near *InstancePtr, XCompute_near_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCompute_near_Start(XCompute_near *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_near_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCompute_near_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCompute_near_IsDone(XCompute_near *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_near_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCompute_near_IsIdle(XCompute_near *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_near_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCompute_near_IsReady(XCompute_near *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_near_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCompute_near_EnableAutoRestart(XCompute_near *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_near_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCompute_near_DisableAutoRestart(XCompute_near *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_near_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_AP_CTRL, 0);
}

void XCompute_near_Set_inputQuery(XCompute_near *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_near_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_INPUTQUERY_DATA, (u32)(Data));
    XCompute_near_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_INPUTQUERY_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_near_Get_inputQuery(XCompute_near *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_near_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_INPUTQUERY_DATA);
    Data += (u64)XCompute_near_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_INPUTQUERY_DATA + 4) << 32;
    return Data;
}

void XCompute_near_Set_searchSpace(XCompute_near *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_near_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_SEARCHSPACE_DATA, (u32)(Data));
    XCompute_near_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_SEARCHSPACE_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_near_Get_searchSpace(XCompute_near *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_near_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_SEARCHSPACE_DATA);
    Data += (u64)XCompute_near_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_SEARCHSPACE_DATA + 4) << 32;
    return Data;
}

void XCompute_near_Set_distance(XCompute_near *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_near_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_DISTANCE_DATA, (u32)(Data));
    XCompute_near_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_DISTANCE_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_near_Get_distance(XCompute_near *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_near_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_DISTANCE_DATA);
    Data += (u64)XCompute_near_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_DISTANCE_DATA + 4) << 32;
    return Data;
}

void XCompute_near_InterruptGlobalEnable(XCompute_near *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_near_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_GIE, 1);
}

void XCompute_near_InterruptGlobalDisable(XCompute_near *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_near_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_GIE, 0);
}

void XCompute_near_InterruptEnable(XCompute_near *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCompute_near_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_IER);
    XCompute_near_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_IER, Register | Mask);
}

void XCompute_near_InterruptDisable(XCompute_near *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCompute_near_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_IER);
    XCompute_near_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCompute_near_InterruptClear(XCompute_near *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_near_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_ISR, Mask);
}

u32 XCompute_near_InterruptGetEnabled(XCompute_near *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCompute_near_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_IER);
}

u32 XCompute_near_InterruptGetStatus(XCompute_near *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCompute_near_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_NEAR_CONTROL_ADDR_ISR);
}

