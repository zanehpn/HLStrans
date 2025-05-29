// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xqs.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XQs_CfgInitialize(XQs *InstancePtr, XQs_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XQs_Start(XQs *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQs_ReadReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XQs_WriteReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XQs_IsDone(XQs *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQs_ReadReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XQs_IsIdle(XQs *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQs_ReadReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XQs_IsReady(XQs *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQs_ReadReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XQs_EnableAutoRestart(XQs *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQs_WriteReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XQs_DisableAutoRestart(XQs *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQs_WriteReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_AP_CTRL, 0);
}

void XQs_Set_n(XQs *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQs_WriteReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_N_DATA, Data);
}

u32 XQs_Get_n(XQs *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQs_ReadReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_N_DATA);
    return Data;
}

void XQs_Set_arr(XQs *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQs_WriteReg(InstancePtr->Control_r_BaseAddress, XQS_CONTROL_R_ADDR_ARR_DATA, (u32)(Data));
    XQs_WriteReg(InstancePtr->Control_r_BaseAddress, XQS_CONTROL_R_ADDR_ARR_DATA + 4, (u32)(Data >> 32));
}

u64 XQs_Get_arr(XQs *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQs_ReadReg(InstancePtr->Control_r_BaseAddress, XQS_CONTROL_R_ADDR_ARR_DATA);
    Data += (u64)XQs_ReadReg(InstancePtr->Control_r_BaseAddress, XQS_CONTROL_R_ADDR_ARR_DATA + 4) << 32;
    return Data;
}

void XQs_InterruptGlobalEnable(XQs *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQs_WriteReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_GIE, 1);
}

void XQs_InterruptGlobalDisable(XQs *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQs_WriteReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_GIE, 0);
}

void XQs_InterruptEnable(XQs *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQs_ReadReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_IER);
    XQs_WriteReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_IER, Register | Mask);
}

void XQs_InterruptDisable(XQs *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQs_ReadReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_IER);
    XQs_WriteReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_IER, Register & (~Mask));
}

void XQs_InterruptClear(XQs *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQs_WriteReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_ISR, Mask);
}

u32 XQs_InterruptGetEnabled(XQs *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQs_ReadReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_IER);
}

u32 XQs_InterruptGetStatus(XQs *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQs_ReadReg(InstancePtr->Control_BaseAddress, XQS_CONTROL_ADDR_ISR);
}

