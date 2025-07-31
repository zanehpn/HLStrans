#include "gesummv.h"

        static void read_data(DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE buff_A[N][N], DATA_TYPE buff_B[N][N], DATA_TYPE buff_x[N]) {
            #pragma HLS INLINE
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                buff_x[i] = x[i];
                for (int j = 0; j < N; j++) {
                    #pragma HLS UNROLL factor=8
                    buff_A[i][j] = A[i][j];
                    buff_B[i][j] = B[i][j];
                }
            }
        }

        static void compute_tmp1(DATA_TYPE alpha, DATA_TYPE buff_A[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp1[N]) {
            #pragma HLS INLINE
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                tmp1[i] = 0;
                for (int j = 0; j < N; j++) {
                    #pragma HLS UNROLL factor=8
                    tmp1[i] += alpha * buff_A[i][j] * buff_x[j];
                }
            }
        }

        static void compute_tmp2(DATA_TYPE beta, DATA_TYPE buff_B[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp2[N]) {
            #pragma HLS INLINE
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                tmp2[i] = 0;
                for (int j = 0; j < N; j++) {
                    #pragma HLS UNROLL factor=8
                    tmp2[i] += beta * buff_B[i][j] * buff_x[j];
                }
            }
        }

        static void compute_y_out(DATA_TYPE tmp1[N], DATA_TYPE tmp2[N], DATA_TYPE buff_y_out[N]) {
            #pragma HLS INLINE
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                buff_y_out[i] = tmp1[i] + tmp2[i];
            }
        }

        static void write_data(DATA_TYPE buff_y_out[N], DATA_TYPE y_out[N]) {
            #pragma HLS INLINE
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                y_out[i] = buff_y_out[i];
            }
        }

        void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
            #pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem
            #pragma HLS INTERFACE m_axi port=B offset=slave bundle=gmem
            #pragma HLS INTERFACE m_axi port=x offset=slave bundle=gmem
            #pragma HLS INTERFACE m_axi port=y_out offset=slave bundle=gmem

            #pragma HLS ARRAY_PARTITION variable=A cyclic factor=8 dim=2
            #pragma HLS ARRAY_PARTITION variable=B cyclic factor=8 dim=2
            #pragma HLS ARRAY_PARTITION variable=x cyclic factor=8
            #pragma HLS ARRAY_PARTITION variable=y_out cyclic factor=8

            DATA_TYPE buff_A[N][N];
            DATA_TYPE buff_B[N][N];
            DATA_TYPE buff_x[N];
            DATA_TYPE buff_y_out[N];
            DATA_TYPE tmp1[N];
            DATA_TYPE tmp2[N];

            read_data(A, B, x, buff_A, buff_B, buff_x);
            compute_tmp1(alpha, buff_A, buff_x, tmp1);
            compute_tmp2(beta, buff_B, buff_x, tmp2);
            compute_y_out(tmp1, tmp2, buff_y_out);
            write_data(buff_y_out, y_out);
        }