#include <stdio.h>
#include <math.h>
#include <string.h>
#include "durbin.h"

// Problem size from durbin.c
#define N 40
// Tolerance for floating‐point comparisons
#define EPS 1e-9

void durbin(double r[40], double y[40]);

// Compute max absolute difference between two arrays of length N
double max_diff(const double a[N], const double b[N]) {
    double mx = 0;
    for(int i = 0; i < N; i++) {
        double d = fabs(a[i] - b[i]);
        if (d > mx) mx = d;
    }
    return mx;
}

int test_zero(void) {
    double r[N] = {0.0}, y[N], expected[N] = {0.0};
    durbin(r, y);
    double err = max_diff(y, expected);
    if (err > EPS) {
        printf("FAIL zero test: max error = %g\n", err);
        return 0;
    }
    printf("PASS zero test\n");
    return 1;
}

int test_single_lag(void) {
    double r[N] = {0.0}, y[N], expected[N] = {0.0};
    r[1] = 0.5;
    // For k=1: alpha = -(r1 + 0)/1 = -0.5, so y[0]=0, y[1]=-0.5, rest 0
    expected[1] = -0.5;
    durbin(r, y);
    double err = max_diff(y, expected);
    if (err > EPS) {
        printf("FAIL single-lag test: max error = %g\n", err);
        printf(" y[1] = %g (expected %g)\n", y[1], expected[1]);
        return 0;
    }
    printf("PASS single-lag test\n");
    return 1;
}

int main(void) {
    int ok = 1;
    ok &= test_zero();
    ok &= test_single_lag();
    if (ok) {
        printf("ALL TESTS PASSED\n");
        return 0;
    } else {
        printf("SOME TESTS FAILED\n");
        return 1;
    }
}
