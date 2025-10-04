// Converted from kalman_filter_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: kalman_filter_malloc_variant.cpp ----
#include <iostream>
#include <cmath>
#include <cstdlib>

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
    // Use dynamic allocation for internal working buffers
    float* x_buf = static_cast<float*>(std::malloc(N * sizeof(float)));
    float* P_buf = static_cast<float*>(std::malloc(N * sizeof(float)));

    if (!x_buf || !P_buf) {
        // Allocation failed; fall back to writing minimal outputs to avoid UB
        if (x) x[0] = x0;
        if (P) P[0] = P0;
        if (x_buf) std::free(x_buf);
        if (P_buf) std::free(P_buf);
        return;
    }

    x_buf[0] = x0;
    P_buf[0] = P0;

    for (int k = 1; k < N; k++) {
        // Prediction step
        float x_pred = A * x_buf[k - 1];
        float P_pred = A * P_buf[k - 1] * A + Q;

        // Update step
        float denom = H * P_pred * H + R;
        float K = (denom != 0.0f) ? (P_pred * H / denom) : 0.0f;
        x_buf[k] = x_pred + K * (z[k] - H * x_pred);
        P_buf[k] = (1.0f - K * H) * P_pred;
    }

    // Copy results back to caller-provided buffers
    for (int k = 0; k < N; ++k) {
        x[k] = x_buf[k];
        P[k] = P_buf[k];
    }

    std::free(x_buf);
    std::free(P_buf);
}

// Top function name: kalman_filter
