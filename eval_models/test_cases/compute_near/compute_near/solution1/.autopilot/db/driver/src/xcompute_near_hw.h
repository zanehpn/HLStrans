// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of inputQuery
//        bit 31~0 - inputQuery[31:0] (Read/Write)
// 0x14 : Data signal of inputQuery
//        bit 31~0 - inputQuery[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of searchSpace
//        bit 31~0 - searchSpace[31:0] (Read/Write)
// 0x20 : Data signal of searchSpace
//        bit 31~0 - searchSpace[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of distance
//        bit 31~0 - distance[31:0] (Read/Write)
// 0x2c : Data signal of distance
//        bit 31~0 - distance[63:32] (Read/Write)
// 0x30 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCOMPUTE_NEAR_CONTROL_ADDR_AP_CTRL          0x00
#define XCOMPUTE_NEAR_CONTROL_ADDR_GIE              0x04
#define XCOMPUTE_NEAR_CONTROL_ADDR_IER              0x08
#define XCOMPUTE_NEAR_CONTROL_ADDR_ISR              0x0c
#define XCOMPUTE_NEAR_CONTROL_ADDR_INPUTQUERY_DATA  0x10
#define XCOMPUTE_NEAR_CONTROL_BITS_INPUTQUERY_DATA  64
#define XCOMPUTE_NEAR_CONTROL_ADDR_SEARCHSPACE_DATA 0x1c
#define XCOMPUTE_NEAR_CONTROL_BITS_SEARCHSPACE_DATA 64
#define XCOMPUTE_NEAR_CONTROL_ADDR_DISTANCE_DATA    0x28
#define XCOMPUTE_NEAR_CONTROL_BITS_DISTANCE_DATA    64

