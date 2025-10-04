// ---- file: linear_regression.cpp ----
#include <cmath>

#define N 1024

void linear_regression(float X[N], float Y[N], float &slope, float &intercept) {
#pragma HLS ARRAY_PARTITION variable=Y type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=X type=cyclic dim=1 factor=1
    float sumX = 0.0;
    float sumY = 0.0;
    float sumXY = 0.0;
    float sumX2 = 0.0;

    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        sumX += X[i];
        sumY += Y[i];
        sumXY += X[i] * Y[i];
        sumX2 += X[i] * X[i];
    }

    float meanX = sumX / N;
    float meanY = sumY / N;

    slope = (sumXY - N * meanX * meanY) / (sumX2 - N * meanX * meanX);
    intercept = meanY - slope * meanX;
}

// Top function name: linear_regression
