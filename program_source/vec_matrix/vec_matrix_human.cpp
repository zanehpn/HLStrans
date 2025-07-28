
#include <stdio.h>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <ap_fixed.h>
#include <stdlib.h>
#include <cstdint>
#include <hls_math.h>
#include "vec_matrix.h"
using namespace std;

data_t BRAM_1[16][64];
data_t BRAM_2[64];
data_t BRAM_3[16];
data_t BRAM_4[16];

void load_16_64_ap_fixed_16_5_(data_t input[16][64], data_t output[16][64])
{
    for (int idx0 = 0; idx0 < 16; idx0++) {
        for (int idx1 = 0; idx1 < 64; idx1++) {
            output[idx0][idx1] = input[idx0][idx1];
        }
    }
}

void load_64_ap_fixed_16_5_(data_t input[64], data_t output[64])
{
    for (int idx0 = 0; idx0 < 64; idx0++) {
        output[idx0] = input[idx0];
    }
}

void load_16_ap_fixed_16_5_(data_t input[16], data_t output[16])
{
    for (int idx0 = 0; idx0 < 16; idx0++) {
        output[idx0] = input[idx0];
    }
}


void store_16_ap_fixed_16_5_(data_t input[16], data_t output[16])
{
    for (int idx0 = 0; idx0 < 16; idx0++) {
        output[idx0] = input[idx0];
    }
}

void vec_matrix(data_t DRAM_1[16][64], data_t DRAM_2[64], data_t DRAM_3[16], data_t DRAM_4[16])
{
    #pragma HLS interface m_axi port=DRAM_1 offset=slave bundle=mem1
    #pragma HLS interface m_axi port=DRAM_2 offset=slave bundle=mem1
    #pragma HLS interface m_axi port=DRAM_3 offset=slave bundle=mem1
    #pragma HLS interface m_axi port=DRAM_4 offset=slave bundle=mem2

    load_16_64_ap_fixed_16_5_(DRAM_1, BRAM_1);
    load_64_ap_fixed_16_5_(DRAM_2, BRAM_2);
    load_16_ap_fixed_16_5_(DRAM_3, BRAM_3);
    //////////////////////////////////////////
// Begin: Inline implementation of MMV_IJ
//////////////////////////////////////////
#pragma HLS array_partition variable=BRAM_1 cyclic factor=16 dim=1
#pragma HLS array_partition variable=BRAM_4 cyclic factor=16 dim=1
#pragma HLS array_partition variable=BRAM_2 cyclic factor=16 dim=1
#pragma HLS array_partition variable=BRAM_1 cyclic factor=16 dim=2

for (int i = 0; i < 16; i++) {
#pragma HLS unroll factor=16
    BRAM_4[i] = 0;
}


for (int i = 0; i < 16; i++) {
#pragma HLS unroll factor=16
for (int j = 0; j < 64; j++) {
#pragma HLS unroll factor=16
    BRAM_4[i] += BRAM_1[i][j] * BRAM_2[j];
}
}
//////////////////////////////////////////
// End: Inline implementation of MMV_IJ
//////////////////////////////////////////

    store_16_ap_fixed_16_5_(BRAM_4, DRAM_4);
}