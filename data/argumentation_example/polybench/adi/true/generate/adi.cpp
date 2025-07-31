#include "adi.h"

static void column_sweep(double u[60][60], double v[60][60], double p[60][60], double q[60][60],
                        const double a, const double b, const double c,
                        const double d, const double e, const double f) {
    #pragma HLS INLINE off
    #pragma HLS ARRAY_PARTITION variable=u cyclic factor=4 dim=2
    #pragma HLS ARRAY_PARTITION variable=v cyclic factor=4 dim=2
    #pragma HLS ARRAY_PARTITION variable=p cyclic factor=4 dim=2
    #pragma HLS ARRAY_PARTITION variable=q cyclic factor=4 dim=2

    COL_I:
    for(int i = 1; i < 59; i++) {
        #pragma HLS UNROLL factor=4
        #pragma HLS PIPELINE II=1
        v[0][i] = 1.0;
        p[i][0] = 0.0;
        q[i][0] = v[0][i];

        COL_J:
        for(int j = 1; j < 59; j++) {
            #pragma HLS PIPELINE II=1
            p[i][j] = -c / (a * p[i][j-1] + b);
            q[i][j] = (-d * u[j][i-1] + (1.0 + 2.0*d)*u[j][i] - f*u[j][i+1] - a*q[i][j-1]) / (a*p[i][j-1] + b);
        }

        v[59][i] = 1.0;

        COL_JJ:
        for(int jj = 58; jj >= 1; jj--) {
            #pragma HLS PIPELINE II=1
            v[jj][i] = p[i][jj] * v[jj+1][i] + q[i][jj];
        }
    }
}

static void row_sweep(double u[60][60], double v[60][60], double p[60][60], double q[60][60],
                     const double a, const double b, const double c,
                     const double d, const double e, const double f) {
    #pragma HLS INLINE off
    #pragma HLS ARRAY_PARTITION variable=u cyclic factor=4 dim=1
    #pragma HLS ARRAY_PARTITION variable=v cyclic factor=4 dim=1
    #pragma HLS ARRAY_PARTITION variable=p cyclic factor=4 dim=1
    #pragma HLS ARRAY_PARTITION variable=q cyclic factor=4 dim=1

    ROW_I:
    for(int i = 1; i < 59; i++) {
        #pragma HLS UNROLL factor=4
        #pragma HLS PIPELINE II=1
        u[i][0] = 1.0;
        p[i][0] = 0.0;
        q[i][0] = u[i][0];

        ROW_J:
        for(int j = 1; j < 59; j++) {
            #pragma HLS PIPELINE II=1
            p[i][j] = -f / (d * p[i][j-1] + e);
            q[i][j] = (-a*v[i-1][j] + (1.0 + 2.0*a)*v[i][j] - c*v[i+1][j] - d*q[i][j-1]) / (d*p[i][j-1] + e);
        }

        u[i][59] = 1.0;

        ROW_JJ:
        for(int jj = 58; jj >= 1; jj--) {
            #pragma HLS PIPELINE II=1
            u[i][jj] = p[i][jj] * u[i][jj+1] + q[i][jj];
        }
    }
}

void adi(int tsteps, int n, double u[60][60], double v[60][60], double p[60][60], double q[60][60]) {
    #pragma HLS ARRAY_PARTITION variable=u cyclic factor=4 dim=1
    #pragma HLS ARRAY_PARTITION variable=v cyclic factor=4 dim=2
    #pragma HLS ARRAY_PARTITION variable=p cyclic factor=4 dim=2
    #pragma HLS ARRAY_PARTITION variable=q cyclic factor=4 dim=2

    const double DX = 1.0/60.0;
    const double DY = 1.0/60.0;
    const double DT = 1.0/40.0;
    const double B1 = 2.0;
    const double B2 = 1.0;
    const double mul1 = B1 * DT / (DX*DX);
    const double mul2 = B2 * DT / (DY*DY);
    const double a = -mul1/2.0;
    const double b = 1.0+mul1;
    const double c = a;
    const double d = -mul2/2.0;
    const double e = 1.0+mul2;
    const double f = d;

    for(int t = 1; t <= 40; t++) {
        #pragma HLS LOOP_FLATTEN
        column_sweep(u, v, p, q, a, b, c, d, e, f);
        row_sweep(u, v, p, q, a, b, c, d, e, f);
    }
}