#include "atax.h"

void compute_tmp1(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE tmp1[N]) {
    int i, j;
    for (i = 0; i < N; i++) {
        tmp1[i] = 0;
        for (j = 0; j < N; j++) {
            tmp1[i] += A[i][j] * x[j];
        }
    }
}

void compute_y_out(DATA_TYPE A[N][N], DATA_TYPE tmp1[N], DATA_TYPE y_out[N]) {
    int i, j;
    for (i = 0; i < N; i++) {
        y_out[i] = 0;
        for (j = 0; j < N; j++) {
            y_out[i] += A[j][i] * tmp1[j];
        }
    }
}

void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
    DATA_TYPE tmp1[N];

    compute_tmp1(A, x, tmp1);
    compute_y_out(A, tmp1, y_out);
}