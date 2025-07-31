#include "gesummv.h"

        void compute_tmp1(DATA_TYPE &tmp1, DATA_TYPE alpha, DATA_TYPE buff_A, DATA_TYPE buff_x) {
            #pragma HLS INLINE
            tmp1 += alpha * buff_A * buff_x;
        }

        void compute_tmp2(DATA_TYPE &tmp2, DATA_TYPE beta, DATA_TYPE buff_B, DATA_TYPE buff_x) {
            #pragma HLS INLINE
            tmp2 += beta * buff_B * buff_x;
        }

        void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]) {
            #pragma HLS ARRAY_PARTITION variable=A complete dim=2
            #pragma HLS ARRAY_PARTITION variable=B complete dim=2
            #pragma HLS ARRAY_PARTITION variable=x complete
            #pragma HLS ARRAY_PARTITION variable=y_out complete

            DATA_TYPE buff_A[N][N];
            DATA_TYPE buff_B[N][N];
            DATA_TYPE buff_x[N];
            DATA_TYPE buff_y_out[N];
            DATA_TYPE tmp1[N];
            DATA_TYPE tmp2[N];

            lprd_1: for(int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                buff_x[i] = x[i];
                tmp1[i] = 0;
                tmp2[i] = 0;
                buff_y_out[i] = 0;
                lprd_2: for(int j = 0; j < N; j++) {
                    #pragma HLS UNROLL
                    buff_A[i][j] = A[i][j];
                    buff_B[i][j] = B[i][j];
                }
            }

            lp1: for(int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                lp2: for(int j = 0; j < N; j++) {
                    #pragma HLS UNROLL
                    compute_tmp1(tmp1[i], alpha, buff_A[i][j], buff_x[j]);
                }
            }

            lp3: for(int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                lp4: for(int j = 0; j < N; j++) {
                    #pragma HLS UNROLL
                    compute_tmp2(tmp2[i], beta, buff_B[i][j], buff_x[j]);
                }
            }

            lp5: for(int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                buff_y_out[i] = tmp1[i] + tmp2[i];
            }

            lpwr: for(int i = 0; i < N; i++) {
                #pragma HLS PIPELINE II=1
                y_out[i] = buff_y_out[i];
            }
        }