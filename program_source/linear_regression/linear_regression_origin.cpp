// Converted from linear_regression_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: linear_regression.cpp ----
#include <cmath>

#define N 1024

void linear_regression(float X[N], float Y[N], float &slope, float &intercept) {

    float sumX = 0.0;
    float sumY = 0.0;
    float sumXY = 0.0;
    float sumX2 = 0.0;

    for (int i = 0; i < N; i++) {

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
