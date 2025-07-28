#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include "support.h"    // for TYPE alias if needed
#include "spmv.h"    // declares: void ellpack(TYPE nzval[N*L], int32_t cols[N*L], TYPE vec[N], TYPE out[N]);

#define N   494
#define L    10
#define EPS 1e-9

// Reference SpMV using ELLPACK arrays
static void spmv_ref(double nzval[N*L],
                     int32_t cols[N*L],
                     double vec[N],
                     double out_ref[N])
{
    for (int i = 0; i < N; i++) {
        double sum = 0.0;
        for (int j = 0; j < L; j++) {
            int idx = j + i*L;
            int c   = cols[idx];
            double v = nzval[idx];
            if (c >= 0 && c < N) {
                sum += v * vec[c];
            }
        }
        out_ref[i] = sum;
    }
}

int main() {
    static double   nzval[N*L];
    static int32_t  cols [N*L];
    static double   vec  [N];
    static double   out_hw[N];
    static double   out_ref[N];

    // 1) Build a simple pattern: each row i has columns (i+j)%N with values 1.0 + 0.1*j
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < L; j++) {
            int idx     = j + i*L;
            cols[idx]   = (i + j) % N;
            nzval[idx]  = 1.0 + 0.1 * j;
        }
    }

    // 2) Random vector (fixed seed for reproducibility)
    srand(42);
    for (int i = 0; i < N; i++) {
        vec[i]     = (double)(rand() % 1000) / 100.0;
        out_hw[i]  = 0.0;
        out_ref[i] = 0.0;
    }

    // 3) Compute reference result
    spmv_ref(nzval, cols, vec, out_ref);

    // 4) Call the ELLPACK kernel
    ellpack(nzval, cols, vec, out_hw);

    // 5) Compare
    int pass = 1;
    for (int i = 0; i < N; i++) {
        double diff = fabs(out_hw[i] - out_ref[i]);
        if (diff > EPS) {
            printf("FAIL at row %d: hw=%.6f, ref=%.6f, diff=%.6f\n",
                   i, out_hw[i], out_ref[i], diff);
            pass = 0;
            break;
        }
    }

    if (pass) {
        printf("PASS: all %d rows match within tolerance %.1e\n", N, EPS);
        return 0;
    } else {
        printf("Some rows mismatched.\n");
        return 1;
    }
}
