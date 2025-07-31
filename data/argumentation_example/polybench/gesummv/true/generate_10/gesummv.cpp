#include "gesummv.h"

void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    DATA_TYPE tmp[N];

    // Initialize tmp and y_out arrays
    for (int i = 0; i < N; i++) {
        tmp[i] = 0;
        y_out[i] = 0;
    }

    // Compute tmp = A * x and y_out = B * x
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            tmp[i] += A[i][j] * x[j];
            y_out[i] += B[i][j] * x[j];
        }
    }

    // Compute y_out = alpha * tmp + beta * y_out
    for (int i = 0; i < N; i++) {
        y_out[i] = alpha * tmp[i] + beta * y_out[i];
    }
}