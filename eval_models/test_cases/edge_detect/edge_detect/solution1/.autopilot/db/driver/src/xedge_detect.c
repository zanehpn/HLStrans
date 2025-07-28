// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xedge_detect.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XEdge_detect_CfgInitialize(XEdge_detect *InstancePtr, XEdge_detect_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XEdge_detect_Set_inputImage(XEdge_detect *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_INPUTIMAGE_DATA, (u32)(Data));
    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_INPUTIMAGE_DATA + 4, (u32)(Data >> 32));
}

u64 XEdge_detect_Get_inputImage(XEdge_detect *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_INPUTIMAGE_DATA);
    Data += (u64)XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_INPUTIMAGE_DATA + 4) << 32;
    return Data;
}

void XEdge_detect_Set_outputImage(XEdge_detect *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_OUTPUTIMAGE_DATA, (u32)(Data));
    XEdge_detect_WriteReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_OUTPUTIMAGE_DATA + 4, (u32)(Data >> 32));
}

u64 XEdge_detect_Get_outputImage(XEdge_detect *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_OUTPUTIMAGE_DATA);
    Data += (u64)XEdge_detect_ReadReg(InstancePtr->Control_BaseAddress, XEDGE_DETECT_CONTROL_ADDR_OUTPUTIMAGE_DATA + 4) << 32;
    return Data;
}

