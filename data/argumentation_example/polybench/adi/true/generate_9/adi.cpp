#include "adi.h"

static void column_sweep(double v[60][60], double u[60][60], double p[60][60], double q[60][60]) {
    #pragma HLS INLINE
    COL_TILING: for (int i = 1; i < 59; i++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS UNROLL factor=4
        v[0][i] = 1.0;
        p[i][0] = 0.0;
        q[i][0] = v[0][i];

        COL_FORWARD: for (int j = 1; j < 59; j++) {
            #pragma HLS PIPELINE II=1
            const double denom = a * p[i][j-1] + b;
            const double inv_denom = 1.0 / denom;
            p[i][j] = (-c) * inv_denom;
            q[i][j] = ((-d) * u[j][i-1] + term_d_col * u[j][i] + neg_f * u[j][i+1] - a * q[i][j-1]) * inv_denom;
        }

        v[59][i] = 1.0;
        COL_BACKWARD: for (int j = 57; j >= 0; j--) {
            #pragma HLS PIPELINE II=1
            const int idx = j + 1;
            v[idx][i] = p[i][idx] * v[idx+1][i] + q[i][idx];
        }
    }
}

static void row_sweep(double u[60][60], double v[60][60], double p[60][60], double q[60][60]) {
    #pragma HLS INLINE
    ROW_TILING: for (int i = 1; i < 59; i++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS UNROLL factor=4
        u[i][0] = 1.0;
        p[i][0] = 0.0;
        q[i][0] = u[i][0];

        ROW_FORWARD: for (int j = 1; j < 59; j++) {
            #pragma HLS PIPELINE II=1
            const double denom_row = d * p[i][j-1] + e;
            const double inv_denom_row = 1.0 / denom_row;
            p[i][j] = (-f) * inv_denom_row;
            q[i][j] = ((-a) * v[i-1][j] + term_a_row * v[i][j] + neg_c * v[i+1][j] - d * q[i][j-1]) * inv_denom_row;
        }

        u[i][59] = 1.0;
        ROW_BACKWARD: for (int j = 57; j >= 0; j--) {
            #pragma HLS PIPELINE II=1
            const int idx = j + 1;
            u[i][idx] = p[i][idx] * u[i][idx+1] + q[i][idx];
        }
    }
}

void adi(int tsteps, int n, double u[60][60], double v[60][60], double p[60][60], double q[60][60]) {
    #pragma HLS INTERFACE ap_ctrl_hs port=return
    #pragma HLS INTERFACE ap_memory storage_type=ram_1p port=u
    #pragma HLS INTERFACE ap_memory storage_type=ram_1p port=v
    #pragma HLS INTERFACE ap_memory storage_type=ram_1p port=p
    #pragma HLS INTERFACE ap_memory storage_type=ram_1p port=q

    #pragma HLS ARRAY_PARTITION variable=u cyclic factor=4 dim=2
    #pragma HLS ARRAY_PARTITION variable=v cyclic factor=4 dim=2
    #pragma HLS ARRAY_PARTITION variable=p cyclic factor=4 dim=2
    #pragma HLS ARRAY_PARTITION variable=q cyclic factor=4 dim=2

    TIME_STEPS: for (int t = 1; t <= 40; t++) {
        #pragma HLS LOOP_TRIPCOUNT min=40 max=40
        column_sweep(v, u, p, q);
        row_sweep(u, v, p, q);
    }
}