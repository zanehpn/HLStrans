// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __kalman_filter_mul_mul_20s_19s_39_1_1__HH__
#define __kalman_filter_mul_mul_20s_19s_39_1_1__HH__
#include "kalman_filter_mul_mul_20s_19s_39_1_1_DSP48_1.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(kalman_filter_mul_mul_20s_19s_39_1_1) {
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    kalman_filter_mul_mul_20s_19s_39_1_1_DSP48_1 kalman_filter_mul_mul_20s_19s_39_1_1_DSP48_1_U;

    SC_CTOR(kalman_filter_mul_mul_20s_19s_39_1_1):  kalman_filter_mul_mul_20s_19s_39_1_1_DSP48_1_U ("kalman_filter_mul_mul_20s_19s_39_1_1_DSP48_1_U") {
        kalman_filter_mul_mul_20s_19s_39_1_1_DSP48_1_U.a(din0);
        kalman_filter_mul_mul_20s_19s_39_1_1_DSP48_1_U.b(din1);
        kalman_filter_mul_mul_20s_19s_39_1_1_DSP48_1_U.p(dout);

    }

};

#endif //
