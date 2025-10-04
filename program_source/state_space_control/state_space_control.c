// ---- file: state_space_control.cpp ----
#include <iostream>

#define N 1024

void state_space_control(
    float A[N][N], 
    float B[N][N], 
    float C[N][N], 
    float D[N][N], 
    float x[N], 
    float u[N], 
    float y[N], 
    float x_next[N]
) {
#pragma HLS ARRAY_PARTITION variable=x_next type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=y type=cyclic dim=1 factor=4
#pragma HLS ARRAY_PARTITION variable=u type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=x type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=D type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=D type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=C type=cyclic dim=2 factor=16
#pragma HLS ARRAY_PARTITION variable=C type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=B type=cyclic dim=2 factor=8
#pragma HLS ARRAY_PARTITION variable=B type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=2 factor=4
#pragma HLS ARRAY_PARTITION variable=A type=cyclic dim=1 factor=1
    // Compute y = C * x + D * u
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        y[i] = 0;
        for (int j = 0; j < N; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=8
            y[i] += C[i][j] * x[j];
        }
        for (int j = 0; j < N; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
            y[i] += D[i][j] * u[j];
        }
    }

    // Compute x_next = A * x + B * u
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        x_next[i] = 0;
        for (int j = 0; j < N; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=16
            x_next[i] += A[i][j] * x[j];
        }
        for (int j = 0; j < N; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
            x_next[i] += B[i][j] * u[j];
        }
    }
}

// Top function name: state_space_control
