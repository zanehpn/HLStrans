// Converted from kalman_filter.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: kalman_filter.cpp ----
#include <iostream>
#include <cmath>

#define N 1024

void kalman_filter(
    float z[N], // Measurement input
    float x[N], // State estimate output
    float P[N], // Estimate covariance output
    float A,    // State transition coefficient
    float H,    // Measurement coefficient
    float Q,    // Process noise covariance
    float R,    // Measurement noise covariance
    float x0,   // Initial state estimate
    float P0    // Initial estimate covariance
) {
#pragma HLS ARRAY_PARTITION variable=P type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=x type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=z type=cyclic dim=1 factor=1
    float x_pred, P_pred, K;
    x[0] = x0;
    P[0] = P0;

    for (int k = 1; k < N; k++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        // Prediction step
        x_pred = A * x[k-1];
        P_pred = A * P[k-1] * A + Q;

        // Update step
        K = P_pred * H / (H * P_pred * H + R);
        x[k] = x_pred + K * (z[k] - H * x_pred);
        P[k] = (1 - K * H) * P_pred;
    }
}

// Top function name: kalman_filter
