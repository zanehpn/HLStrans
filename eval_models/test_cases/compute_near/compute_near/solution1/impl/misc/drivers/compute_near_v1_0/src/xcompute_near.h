// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCOMPUTE_NEAR_H
#define XCOMPUTE_NEAR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcompute_near_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XCompute_near_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCompute_near;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCompute_near_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCompute_near_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCompute_near_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCompute_near_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XCompute_near_Initialize(XCompute_near *InstancePtr, u16 DeviceId);
XCompute_near_Config* XCompute_near_LookupConfig(u16 DeviceId);
int XCompute_near_CfgInitialize(XCompute_near *InstancePtr, XCompute_near_Config *ConfigPtr);
#else
int XCompute_near_Initialize(XCompute_near *InstancePtr, const char* InstanceName);
int XCompute_near_Release(XCompute_near *InstancePtr);
#endif

void XCompute_near_Start(XCompute_near *InstancePtr);
u32 XCompute_near_IsDone(XCompute_near *InstancePtr);
u32 XCompute_near_IsIdle(XCompute_near *InstancePtr);
u32 XCompute_near_IsReady(XCompute_near *InstancePtr);
void XCompute_near_EnableAutoRestart(XCompute_near *InstancePtr);
void XCompute_near_DisableAutoRestart(XCompute_near *InstancePtr);

void XCompute_near_Set_inputQuery(XCompute_near *InstancePtr, u64 Data);
u64 XCompute_near_Get_inputQuery(XCompute_near *InstancePtr);
void XCompute_near_Set_searchSpace(XCompute_near *InstancePtr, u64 Data);
u64 XCompute_near_Get_searchSpace(XCompute_near *InstancePtr);
void XCompute_near_Set_distance(XCompute_near *InstancePtr, u64 Data);
u64 XCompute_near_Get_distance(XCompute_near *InstancePtr);

void XCompute_near_InterruptGlobalEnable(XCompute_near *InstancePtr);
void XCompute_near_InterruptGlobalDisable(XCompute_near *InstancePtr);
void XCompute_near_InterruptEnable(XCompute_near *InstancePtr, u32 Mask);
void XCompute_near_InterruptDisable(XCompute_near *InstancePtr, u32 Mask);
void XCompute_near_InterruptClear(XCompute_near *InstancePtr, u32 Mask);
u32 XCompute_near_InterruptGetEnabled(XCompute_near *InstancePtr);
u32 XCompute_near_InterruptGetStatus(XCompute_near *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
