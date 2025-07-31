#include "gesummv.h"

        void compute_tmp1(DATA_TYPE alpha, DATA_TYPE buff_A[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp1[N]) {
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                for (int j = 0; j < N; j++) {
                    #pragma HLS UNROLL factor=UNROLL_FACTOR
                    tmp1[i] += alpha * buff_A[i][j] * buff_x[j];
                }
            }
        }

        void compute_tmp2(DATA_TYPE beta, DATA_TYPE buff_B[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp2[N]) {
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                for (int j = 0; j < N; j++) {
                    #pragma HLS UNROLL factor=UNROLL_FACTOR
                    tmp2[i] += beta * buff_B[i][j] * buff_x[j];
                }
            }
        }

        void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
            #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
            #pragma HLS INTERFACE m_axi port=B offset=slave bundle=gmem
            #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem
            #pragma HLS INTERFACE m_axi port=y_out offset=slave bundle=gmem

            #pragma HLS ARRAY_PARTITION variable=A cyclic factor=UNROLL_FACTOR dim=2
            #pragma HLS ARRAY_PARTITION variable=B cyclic factor=UNROLL_FACTOR dim=2
            #pragma HLS ARRAY_PARTITION variable=x cyclic factor=UNROLL_FACTOR
            #pragma HLS ARRAY_PARTITION variable=y_out cyclic factor=UNROLL_FACTOR

            DATA_TYPE buff_A[N][N];
            DATA_TYPE buff_B[N][N];
            DATA_TYPE buff_x[N];
            DATA_TYPE buff_y_out[N];
            DATA_TYPE tmp1[N] = {0};
            DATA_TYPE tmp2[N] = {0};

            // Load data into local buffers
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                buff_x[i] = x[i];
                for (int j = 0; j < N; j++) {
                    #pragma HLS UNROLL factor=UNROLL_FACTOR
                    buff_A[i][j] = A[i][j];
                    buff_B[i][j] = B[i][j];
                }
            }

            compute_tmp1(alpha, buff_A, buff_x, tmp1);
            compute_tmp2(beta, buff_B, buff_x, tmp2);

            // Compute final result
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                buff_y_out[i] = tmp1[i] + tmp2[i];
                y_out[i] = buff_y_out[i];
            }
        }