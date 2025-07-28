// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of inputImage
//        bit 31~0 - inputImage[31:0] (Read/Write)
// 0x14 : Data signal of inputImage
//        bit 31~0 - inputImage[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of outputImage
//        bit 31~0 - outputImage[31:0] (Read/Write)
// 0x20 : Data signal of outputImage
//        bit 31~0 - outputImage[63:32] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XEDGE_DETECT_CONTROL_ADDR_INPUTIMAGE_DATA  0x10
#define XEDGE_DETECT_CONTROL_BITS_INPUTIMAGE_DATA  64
#define XEDGE_DETECT_CONTROL_ADDR_OUTPUTIMAGE_DATA 0x1c
#define XEDGE_DETECT_CONTROL_BITS_OUTPUTIMAGE_DATA 64

