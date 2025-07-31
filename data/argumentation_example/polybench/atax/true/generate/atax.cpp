#include "atax.h"

        void compute_y(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y[N]) {
            for (int i = 0; i < N; i++) {
                y[i] = 0;
                for (int j = 0; j < N; j++) {
                    y[i] += A[i][j] * x[j];
                }
            }
        }

        void compute_y_out(DATA_TYPE A[N][N], DATA_TYPE y[N], DATA_TYPE y_out[N]) {
            for (int j = 0; j < N; j++) {
                y_out[j] = 0;
                for (int i = 0; i < N; i++) {
                    y_out[j] += A[i][j] * y[i];
                }
            }
        }

        void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
            DATA_TYPE y[N];

            compute_y(A, x, y);
            compute_y_out(A, y, y_out);
        }