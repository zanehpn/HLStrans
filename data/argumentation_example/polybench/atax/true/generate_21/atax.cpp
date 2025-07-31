#include "atax.h"

        void compute_tmp(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE tmp[N]) {
            #pragma HLS INLINE off

            DATA_TYPE localA[TILE_SIZE][TILE_SIZE];
            DATA_TYPE localX[TILE_SIZE];

            for (int i = 0; i < N; i++) {
                #pragma HLS UNROLL factor=UNROLL_FACTOR
                tmp[i] = 0;
            }

            for (int ii = 0; ii < N; ii += TILE_SIZE) {
                for (int jj = 0; jj < N; jj += TILE_SIZE) {
                    #pragma HLS PIPELINE II=1
                    #pragma HLS UNROLL factor=UNROLL_FACTOR
                    for (int i = 0; i < TILE_SIZE; i++) {
                        for (int j = 0; j < TILE_SIZE; j++) {
                            localA[i][j] = A[ii + i][jj + j];
                        }
                    }

                    for (int j = 0; j < TILE_SIZE; j++) {
                        localX[j] = x[jj + j];
                    }

                    for (int i = 0; i < TILE_SIZE; i++) {
                        for (int j = 0; j < TILE_SIZE; j++) {
                            tmp[ii + i] += localA[i][j] * localX[j];
                        }
                    }
                }
            }
        }

        void compute_y_out(DATA_TYPE A[N][N], DATA_TYPE tmp[N], DATA_TYPE y_out[N]) {
            #pragma HLS INLINE off

            for (int i = 0; i < N; i++) {
                #pragma HLS UNROLL factor=UNROLL_FACTOR
                y_out[i] = 0;
            }

            for (int ii = 0; ii < N; ii += TILE_SIZE) {
                for (int jj = 0; jj < N; jj += TILE_SIZE) {
                    #pragma HLS PIPELINE II=1
                    #pragma HLS UNROLL factor=UNROLL_FACTOR
                    DATA_TYPE localA[TILE_SIZE][TILE_SIZE];
                    DATA_TYPE localTmp[TILE_SIZE];

                    for (int i = 0; i < TILE_SIZE; i++) {
                        for (int j = 0; j < TILE_SIZE; j++) {
                            localA[i][j] = A[ii + i][jj + j];
                        }
                    }

                    for (int i = 0; i < TILE_SIZE; i++) {
                        localTmp[i] = tmp[ii + i];
                    }

                    for (int i = 0; i < TILE_SIZE; i++) {
                        for (int j = 0; j < TILE_SIZE; j++) {
                            y_out[jj + j] += localA[i][j] * localTmp[i];
                        }
                    }
                }
            }
        }

        void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
            #pragma HLS DATAFLOW

            DATA_TYPE tmp[N];

            compute_tmp(A, x, tmp);
            compute_y_out(A, tmp, y_out);
        }