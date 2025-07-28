// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1__HH__
#define __jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1__HH__
#include "jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0 jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U;

    SC_CTOR(jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1):  jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U ("jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U") {
        jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U.clk(clk);
        jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U.rst(reset);
        jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U.ce(ce);
        jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U.in0(din0);
        jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U.in1(din1);
        jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U.in2(din2);
        jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U.dout(dout);

    }

};

#endif //
