#include "gesummv.h"

void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    DATA_TYPE y[N] = {0};

    for (int i = 0; i < N; i++) {
        DATA_TYPE tmp = 0;
        for (int j = 0; j < N; j++) {
            tmp += A[i][j] * x[j];
            y[i] += B[i][j] * x[j];
        }
        y_out[i] = alpha * tmp + beta * y[i];
    }
}