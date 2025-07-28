// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XQUERIES_SEARCH_H
#define XQUERIES_SEARCH_H

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
#include "xqueries_search_hw.h"

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
} XQueries_search_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XQueries_search;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XQueries_search_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XQueries_search_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XQueries_search_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XQueries_search_ReadReg(BaseAddress, RegOffset) \
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
int XQueries_search_Initialize(XQueries_search *InstancePtr, u16 DeviceId);
XQueries_search_Config* XQueries_search_LookupConfig(u16 DeviceId);
int XQueries_search_CfgInitialize(XQueries_search *InstancePtr, XQueries_search_Config *ConfigPtr);
#else
int XQueries_search_Initialize(XQueries_search *InstancePtr, const char* InstanceName);
int XQueries_search_Release(XQueries_search *InstancePtr);
#endif

void XQueries_search_Start(XQueries_search *InstancePtr);
u32 XQueries_search_IsDone(XQueries_search *InstancePtr);
u32 XQueries_search_IsIdle(XQueries_search *InstancePtr);
u32 XQueries_search_IsReady(XQueries_search *InstancePtr);
void XQueries_search_EnableAutoRestart(XQueries_search *InstancePtr);
void XQueries_search_DisableAutoRestart(XQueries_search *InstancePtr);

void XQueries_search_Set_targets(XQueries_search *InstancePtr, u64 Data);
u64 XQueries_search_Get_targets(XQueries_search *InstancePtr);
void XQueries_search_Set_queries(XQueries_search *InstancePtr, u64 Data);
u64 XQueries_search_Get_queries(XQueries_search *InstancePtr);
void XQueries_search_Set_indices(XQueries_search *InstancePtr, u64 Data);
u64 XQueries_search_Get_indices(XQueries_search *InstancePtr);

void XQueries_search_InterruptGlobalEnable(XQueries_search *InstancePtr);
void XQueries_search_InterruptGlobalDisable(XQueries_search *InstancePtr);
void XQueries_search_InterruptEnable(XQueries_search *InstancePtr, u32 Mask);
void XQueries_search_InterruptDisable(XQueries_search *InstancePtr, u32 Mask);
void XQueries_search_InterruptClear(XQueries_search *InstancePtr, u32 Mask);
u32 XQueries_search_InterruptGetEnabled(XQueries_search *InstancePtr);
u32 XQueries_search_InterruptGetStatus(XQueries_search *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
