#include "atax.h"

        void compute_Ax_tiled(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE temp[N]) {
            #pragma HLS INLINE
            #pragma HLS ARRAY_PARTITION variable=A cyclic factor=TILE_SIZE dim=2
            #pragma HLS ARRAY_PARTITION variable=x cyclic factor=TILE_SIZE dim=1
            #pragma HLS ARRAY_PARTITION variable=temp cyclic factor=TILE_SIZE dim=1

            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                temp[i] = 0;
            }

            for (int ii = 0; ii < N; ii += TILE_SIZE) {
                for (int jj = 0; jj < N; jj += TILE_SIZE) {
                    for (int i = 0; i < TILE_SIZE; i++) {
                        if (ii + i >= N) continue;
                        DATA_TYPE sum = temp[ii + i];
                        #pragma HLS PIPELINE II=1
                        for (int j = 0; j < TILE_SIZE; j++) {
                            if (jj + j < N) {
                                sum += A[ii + i][jj + j] * x[jj + j];
                            }
                        }
                        temp[ii + i] = sum;
                    }
                }
            }
        }

        void compute_AT_temp_tiled(DATA_TYPE A[N][N], DATA_TYPE temp[N], DATA_TYPE y_out[N]) {
            #pragma HLS INLINE
            #pragma HLS ARRAY_PARTITION variable=A cyclic factor=TILE_SIZE dim=1
            #pragma HLS ARRAY_PARTITION variable=temp cyclic factor=TILE_SIZE dim=1
            #pragma HLS ARRAY_PARTITION variable=y_out cyclic factor=TILE_SIZE dim=1

            for (int jj = 0; jj < N; jj += TILE_SIZE) {
                for (int ii = 0; ii < N; ii += TILE_SIZE) {
                    for (int j = 0; j < TILE_SIZE; j++) {
                        if (jj + j >= N) continue;
                        DATA_TYPE sum = y_out[jj + j];
                        #pragma HLS PIPELINE II=1
                        for (int i = 0; i < TILE_SIZE; i++) {
                            if (ii + i < N) {
                                sum += A[ii + i][jj + j] * temp[ii + i];
                            }
                        }
                        y_out[jj + j] = sum;
                    }
                }
            }
        }

        void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
            #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
            #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem
            #pragma HLS INTERFACE m_axi port=y_out offset=slave bundle=gmem
            #pragma HLS INTERFACE s_axilite port=A bundle=control
            #pragma HLS INTERFACE s_axilite port=x bundle=control
            #pragma HLS INTERFACE s_axilite port=y_out bundle=control
            #pragma HLS INTERFACE s_axilite port=return bundle=control

            DATA_TYPE temp[N];
            #pragma HLS ARRAY_PARTITION variable=temp cyclic factor=TILE_SIZE dim=1

            // Initialize output array
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                y_out[i] = 0;
            }

            compute_Ax_tiled(A, x, temp);
            compute_AT_temp_tiled(A, temp, y_out);
        }