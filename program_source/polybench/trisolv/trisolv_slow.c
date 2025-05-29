#include "trisolv.h"

void trisolv(double L[40][40], double x[40], double b[40]) {

    const int n = 40;

    int i, j;

/*L1:*/    for (i = 0; i < n; i++) {
        x[i] = b[i];
/*L2:*/        for (j = 0; j < i; j++)
            x[i] -= L[i][j] * x[j];
        x[i] = x[i] / L[i][i];
    }
}