#include "adi.h"
#include <hls_stream.h>

void column_sweep(double u[N][N], double v[N][N], double p[N][N], double q[N][N], double a, double b, double c, double d, double e, double f) {
    #pragma HLS INLINE
    COL_LOOP:
    for (int i = 1; i < N-1; i++) {
        #pragma HLS LOOP_TILE factor=TILE_SIZE
        #pragma HLS PIPELINE II=1
        v[0][i] = 1.0;
        p[i][0] = 0.0;
        q[i][0] = v[0][i];
        
        COL_FORWARD:
        for (int j = 1; j < N-1; j++) {
            #pragma HLS PIPELINE II=1
            p[i][j] = -c / (a * p[i][j-1] + b);
            q[i][j] = (-d * u[j][i-1] + (1.0 + 2.0*d)*u[j][i] - f*u[j][i+1] - a*q[i][j-1]) / (a*p[i][j-1] + b);
        }
        
        v[N-1][i] = 1.0;
        COL_BACKWARD:
        for (int jj = N-2; jj >= 1; jj--) {
            #pragma HLS PIPELINE II=1
            v[jj][i] = p[i][jj] * v[jj+1][i] + q[i][jj];
        }
    }
}

void row_sweep(double u[N][N], double v[N][N], double p[N][N], double q[N][N], double a, double b, double c, double d, double e, double f) {
    #pragma HLS INLINE
    ROW_LOOP:
    for (int i = 1; i < N-1; i++) {
        #pragma HLS LOOP_TILE factor=TILE_SIZE
        #pragma HLS PIPELINE II=1
        u[i][0] = 1.0;
        p[i][0] = 0.0;
        q[i][0] = u[i][0];
        
        ROW_FORWARD:
        for (int j = 1; j < N-1; j++) {
            #pragma HLS PIPELINE II=1
            p[i][j] = -f / (d * p[i][j-1] + e);
            q[i][j] = (-a * v[i-1][j] + (1.0 + 2.0*a)*v[i][j] - c*v[i+1][j] - d*q[i][j-1]) / (d*p[i][j-1] + e);
        }
        
        u[i][N-1] = 1.0;
        ROW_BACKWARD:
        for (int jj = N-2; jj >= 1; jj--) {
            #pragma HLS PIPELINE II=1
            u[i][jj] = p[i][jj] * u[i][jj+1] + q[i][jj];
        }
    }
}

void adi(int tsteps, int n, double u[N][N], double v[N][N], double p[N][N], double q[N][N]) {
    #pragma HLS ARRAY_PARTITION variable=u cyclic dim=2 factor=PARTITION_FACTOR
    #pragma HLS ARRAY_PARTITION variable=v cyclic dim=2 factor=PARTITION_FACTOR
    #pragma HLS ARRAY_PARTITION variable=p cyclic dim=2 factor=PARTITION_FACTOR
    #pragma HLS ARRAY_PARTITION variable=q cyclic dim=2 factor=PARTITION_FACTOR

    static double u_buf[2][N][N];
    static double v_buf[2][N][N];
    #pragma HLS ARRAY_PARTITION variable=u_buf cyclic dim=2 factor=PARTITION_FACTOR
    #pragma HLS ARRAY_PARTITION variable=v_buf cyclic dim=2 factor=PARTITION_FACTOR

    // Initialize buffers
    BUFFER_INIT:
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=PARTITION_FACTOR
            u_buf[0][i][j] = u[i][j];
            v_buf[0][i][j] = v[i][j];
        }
    }

    const double DX = 1.0 / N;
    const double DY = 1.0 / N;
    const double DT = 1.0 / 40;
    const double B1 = 2.0;
    const double B2 = 1.0;
    const double mul1 = B1 * DT / (DX * DX);
    const double mul2 = B2 * DT / (DY * DY);
    const double a = -mul1 / 2.0;
    const double b = 1.0 + mul1;
    const double c = a;
    const double d = -mul2 / 2.0;
    const double e = 1.0 + mul2;
    const double f = d;

    TIME_STEP:
    for (int t = 1; t <= tsteps; t++) {
        #pragma HLS LOOP_TRIPCOUNT min=40 max=40
        int pp = t % 2;
        column_sweep(u_buf[pp], v_buf[pp], p, q, a, b, c, d, e, f);
        row_sweep(v_buf[pp], u_buf[1-pp], p, q, a, b, c, d, e, f);
    }

    // Write back results
    BUFFER_OUT:
    int final_pp = tsteps % 2;
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < N; j++) {
            #pragma HLS UNROLL factor=PARTITION_FACTOR
            u[i][j] = u_buf[final_pp][i][j];
            v[i][j] = v_buf[final_pp][i][j];
        }
    }
}