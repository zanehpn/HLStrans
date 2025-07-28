#include <stdio.h>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <math.h>
#include <ap_fixed.h>
#include <hls_math.h>
#include <stdlib.h>
#include <cstdint>
typedef ap_fixed<16, 5> data_t;

#define C 64
#define H 28
#define W 28


// 简化版 ELU：output[i][j][k] = input>=0 ? input : alpha*(exp(input)-1)
void elu(data_t input[C][H][W],
                data_t output[C][H][W],
                data_t alpha)
{
#pragma HLS interface bram port=input
#pragma HLS interface bram port=output
#pragma HLS interface s_axilite port=alpha
#pragma HLS interface s_axilite port=return

    // 三重循环逐元素计算 ELU
    for (int c = 0; c < C; c++) {
        for (int h = 0; h < H; h++) {
            for (int w = 0; w < W; w++) {
#pragma HLS pipeline II=1
                data_t x = input[c][h][w];
                if (x >= (data_t)0) {
                    output[c][h][w] = x;
                } else {
                    output[c][h][w] = alpha * (hls::exp(x) - (data_t)1);
                }
            }
        }
    }
}
