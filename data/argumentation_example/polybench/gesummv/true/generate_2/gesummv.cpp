#include "gesummv.h"

        void load_data(DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE buff_A[N][N], DATA_TYPE buff_B[N][N], DATA_TYPE buff_x[N]) {
            #pragma HLS INLINE
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                buff_x[i] = x[i];
                for (int j = 0; j < N; j++) {
                    #pragma HLS PIPELINE II=1
                    buff_A[i][j] = A[i][j];
                    buff_B[i][j] = B[i][j];
                }
            }
        }

        void compute_tmp1(DATA_TYPE alpha, DATA_TYPE buff_A[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp1[N]) {
            #pragma HLS INLINE
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                tmp1[i] = 0;
                for (int j = 0; j < N; j++) {
                    #pragma HLS PIPELINE II=1
                    tmp1[i] += alpha * buff_A[i][j] * buff_x[j];
                }
            }
        }

        void compute_tmp2(DATA_TYPE beta, DATA_TYPE buff_B[N][N], DATA_TYPE buff_x[N], DATA_TYPE tmp2[N]) {
            #pragma HLS INLINE
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                tmp2[i] = 0;
                for (int j = 0; j < N; j++) {
                    #pragma HLS PIPELINE II=1
                    tmp2[i] += beta * buff_B[i][j] * buff_x[j];
                }
            }
        }

        void compute_y_out(DATA_TYPE tmp1[N], DATA_TYPE tmp2[N], DATA_TYPE buff_y_out[N]) {
            #pragma HLS INLINE
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                buff_y_out[i] = tmp1[i] + tmp2[i];
            }
        }

        void store_data(DATA_TYPE buff_y_out[N], DATA_TYPE y_out[N]) {
            #pragma HLS INLINE
            for (int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
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

            load_data(A, B, x, buff_A, buff_B, buff_x);
            compute_tmp1(alpha, buff_A, buff_x, tmp1);
            compute_tmp2(beta, buff_B, buff_x, tmp2);
            compute_y_out(tmp1, tmp2, buff_y_out);
            store_data(buff_y_out, y_out);
        }