#include <stdio.h>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <ap_fixed.h>
#include <hls_math.h>
#include <stdlib.h>
#include <cstdint>

typedef ap_fixed<16, 5> fixed_t;

#define B   4      
#define N   100     
#define dk  128     
#define dv  128     

using namespace std;

void softmax(float matrix[B][N][N]) {
    for (int b = 0; b < B; ++b) {
        for (int i = 0; i < N; ++i) {
            float max_val = matrix[b][i][0];
            #pragma HLS LOOP_TRIPCOUNT min=1 max=N
            for (int j = 1; j < N; ++j) {
                #pragma HLS LOOP_TRIPCOUNT min=1 max=N-1
                if (matrix[b][i][j] > max_val) {
                    max_val = matrix[b][i][j];
                }
            }

            float sum = 0;
            #pragma HLS LOOP_TRIPCOUNT min=1 max=N
            for (int j = 0; j < N; ++j) {
                #pragma HLS LOOP_TRIPCOUNT min=1 max=N
                matrix[b][i][j] = exp(matrix[b][i][j] - max_val);
                sum += matrix[b][i][j];
            }

            #pragma HLS LOOP_TRIPCOUNT min=1 max=N
            for (int j = 0; j < N; ++j) {
                #pragma HLS LOOP_TRIPCOUNT min=1 max=N
                matrix[b][i][j] /= sum;
            }
        }
    }
}

void compute_attention_HLS(fixed_t Q[B][N][dk], fixed_t K[B][N][dk], fixed_t V[B][N][dv], fixed_t Output[B][N][dv]) {
    float attention[B][N][N];
    float scale = 1.0 / sqrt((float)dk);

    #pragma HLS ARRAY_PARTITION variable=Q complete dim=1
    #pragma HLS ARRAY_PARTITION variable=K complete dim=1
    #pragma HLS ARRAY_PARTITION variable=V complete dim=1
    #pragma HLS ARRAY_PARTITION variable=Output complete dim=1

    #pragma HLS DATAFLOW

    // Compute attention scores
    #pragma HLS LOOP_FLATTEN
    for (int b = 0; b < B; ++b) {
        #pragma HLS LOOP_TRIPCOUNT min=1 max=B
        for (int i = 0; i < N; ++i) {
            #pragma HLS LOOP_TRIPCOUNT min=1 max=N
            for (int j = 0; j < N; ++j) {
                #pragma HLS LOOP_TRIPCOUNT min=1 max=N
                float sum = 0;
                #pragma HLS LOOP_TRIPCOUNT min=1 max=dk
                for (int k = 0; k < dk; ++k) {
                    sum += Q[b][i][k].to_float() * K[b][j][k].to_float();
                }
                attention[b][i][j] = sum * scale;
            }
        }
    }

    // Apply softmax
    softmax(attention);

    // Compute output
    #pragma HLS LOOP_FLATTEN
    for (int b = 0; b < B; ++b) {
        #pragma HLS LOOP_TRIPCOUNT min=1 max=B
        for (int i = 0; i < N; ++i) {
            #pragma HLS LOOP_TRIPCOUNT min=1 max=N
            for (int j = 0; j < dv; ++j) {
                #pragma HLS LOOP_TRIPCOUNT min=1 max=dv
                float sum = 0;
                #pragma HLS LOOP_TRIPCOUNT min=1 max=N
                for (int k = 0; k < N; ++k) {
                    sum += attention[b][i][k] * V[b][k][j].to_float();
                }
                Output[b][i][j] = (fixed_t)sum;
            }
        }
    }
}