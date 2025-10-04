#include <cmath>

#define N 1024

void linear_regression(float X[N], float Y[N], float &slope, float &intercept) {
    float* dX = new float[N];
    float* dY = new float[N];

    for (int i = 0; i < N; ++i) {
        dX[i] = X[i];
        dY[i] = Y[i];
    }

    float sumX = 0.0f;
    float sumY = 0.0f;
    float sumXY = 0.0f;
    float sumX2 = 0.0f;

    for (int i = 0; i < N; ++i) {
        float xi = dX[i];
        float yi = dY[i];
        sumX += xi;
        sumY += yi;
        sumXY += xi * yi;
        sumX2 += xi * xi;
    }

    float meanX = sumX / N;
    float meanY = sumY / N;

    slope = (sumXY - N * meanX * meanY) / (sumX2 - N * meanX * meanX);
    intercept = meanY - slope * meanX;

    delete[] dX;
    delete[] dY;
}
