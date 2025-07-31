#include "gesummv.h"

        void read_data(DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE buff_A[N][N], DATA_TYPE buff_B[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp1[N], DATA_TYPE tmp2[N], DATA_TYPE buff_y_out[N]) {
            #pragma HLS INLINE
            #pragma HLS loop_flatten
            for (int i = 0; i < N; i++) {
                buff_x[i] = x[i];
                tmp1[i] = 0;
                tmp2[i] = 0;
                buff_y_out[i] = 0;
                for (int j = 0; j < N; j++) {
                    buff_A[i][j] = A[i][j];
                    buff_B[i][j] = B[i][j];
                }
            }
        }

        void compute_tmp1(DATA_TYPE alpha, DATA_TYPE buff_A[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp1[N]) {
            #pragma HLS INLINE
            #pragma HLS loop_flatten
            for (int i = 0; i < N; i++) {
                for (int j = 0; j < N; j++) {
                    tmp1[i] += alpha * buff_A[i][j] * buff_x[j];
                }
            }
        }

        void compute_tmp2(DATA_TYPE beta, DATA_TYPE buff_B[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp2[N]) {
            #pragma HLS INLINE
            #pragma HLS loop_flatten
            for (int i = 0; i < N; i++) {
                for (int j = 0; j < N; j++) {
                    tmp2[i] += beta * buff_B[i][j] * buff_x[j];
                }
            }
        }

        void write_output(DATA_TYPE tmp1[N], DATA_TYPE tmp2[N], DATA_TYPE buff_y_out[N], DATA_TYPE y_out[N]) {
            #pragma HLS INLINE
            #pragma HLS loop_flatten
            for (int i = 0; i < N; i++) {
                buff_y_out[i] = tmp1[i] + tmp2[i];
                y_out[i] = buff_y_out[i];
            }
        }

        void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
            #pragma HLS DATAFLOW

            DATA_TYPE buff_A[N][N];
            DATA_TYPE buff_B[N][N];
            DATA_TYPE buff_x[N];
            DATA_TYPE buff_y_out[N];
            DATA_TYPE tmp1[N];
            DATA_TYPE tmp2[N];

            read_data(A, B, x, buff_A, buff_B, buff_x, tmp1, tmp2, buff_y_out);
            compute_tmp1(alpha, buff_A, buff_x, tmp1);
            compute_tmp2(beta, buff_B, buff_x, tmp2);
            write_output(tmp1, tmp2, buff_y_out, y_out);
        }