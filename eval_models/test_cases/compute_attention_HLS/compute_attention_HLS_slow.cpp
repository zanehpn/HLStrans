#include <stdio.h>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <ap_fixed.h>
#include <hls_math.h>
#include <stdlib.h>
#include <cstdint>

typedef ap_fixed<16, 5> fixed_t;

// Define tensor dimensions
#define B   4      // Batch size
#define N   100     // Sequence length
#define dk  128     // Key/Query dimension
#define dv  128     // Value dimension
using namespace std;


void softmax(float matrix[B][N][N]) {
    for (int b = 0; b < B; ++b) {
        for (int i = 0; i < N; ++i) {
            float max_val = matrix[b][i][0];
            for (int j = 1; j < N; ++j) {
                if (matrix[b][i][j] > max_val) {
                    max_val = matrix[b][i][j];
                }
            }

            float sum = 0;
            for (int j = 0; j < N; ++j) {
                matrix[b][i][j] = exp(matrix[b][i][j] - max_val);
                sum += matrix[b][i][j];
            }

            for (int j = 0; j < N; ++j) {
                matrix[b][i][j] /= sum;
            }
        }
    }
}

void compute_attention_HLS(fixed_t Q[B][N][dk], fixed_t K[B][N][dk], fixed_t V[B][N][dv], fixed_t Output[B][N][dv]) {
    float attention[B][N][N];
    float scale = 1.0 / sqrt((float)dk);

    // Compute Q * K^T
    for (int b = 0; b < B; ++b) {
        for (int i = 0; i < N; ++i) {
            for (int j = 0; j < N; ++j) {
                float sum = 0;
                for (int k = 0; k < dk; ++k) {
                    sum += Q[b][i][k].to_float() * K[b][j][k].to_float();
                }
                attention[b][i][j] = sum * scale;
            }
        }
    }

    // Apply softmax
    softmax(attention);

    // Compute Attention * V
    for (int b = 0; b < B; ++b) {
        for (int i = 0; i < N; ++i) {
            for (int j = 0; j < dv; ++j) {
                float sum = 0;
                for (int k = 0; k < N; ++k) {
                    sum += attention[b][i][k] * V[b][k][j].to_float();
                }
                Output[b][i][j] = (fixed_t)sum;
            }
        }
    }
}