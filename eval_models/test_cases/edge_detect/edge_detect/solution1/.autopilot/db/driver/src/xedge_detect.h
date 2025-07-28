// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XEDGE_DETECT_H
#define XEDGE_DETECT_H

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
#include "xedge_detect_hw.h"

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
} XEdge_detect_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XEdge_detect;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XEdge_detect_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XEdge_detect_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XEdge_detect_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XEdge_detect_ReadReg(BaseAddress, RegOffset) \
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
int XEdge_detect_Initialize(XEdge_detect *InstancePtr, u16 DeviceId);
XEdge_detect_Config* XEdge_detect_LookupConfig(u16 DeviceId);
int XEdge_detect_CfgInitialize(XEdge_detect *InstancePtr, XEdge_detect_Config *ConfigPtr);
#else
int XEdge_detect_Initialize(XEdge_detect *InstancePtr, const char* InstanceName);
int XEdge_detect_Release(XEdge_detect *InstancePtr);
#endif


void XEdge_detect_Set_inputImage(XEdge_detect *InstancePtr, u64 Data);
u64 XEdge_detect_Get_inputImage(XEdge_detect *InstancePtr);
void XEdge_detect_Set_outputImage(XEdge_detect *InstancePtr, u64 Data);
u64 XEdge_detect_Get_outputImage(XEdge_detect *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
