#include "ludcmp.h"

void ludcmp(double A[40][40], double b[40], double x[40], double y[40]) {

    const int n = 40;

    int i, j, k;

    double w;

/*L1:*/    for (i = 0; i < n; i++) {
/*L2:*/        for (j = 0; j < i; j++) {
            w = A[i][j];
/*L3:*/            for (k = 0; k < j; k++) {
                w -= A[i][k] * A[k][j];
            }
            A[i][j] = w / A[j][j];
        }
/*L4:*/        for (j = i; j < n; j++) {
            w = A[i][j];
/*L5:*/            for (k = 0; k < i; k++) {
                w -= A[i][k] * A[k][j];
            }
            A[i][j] = w;
        }
    }

/*L6:*/    for (i = 0; i < n; i++) {
        w = b[i];
/*L7:*/        for (j = 0; j < i; j++)
            w -= A[i][j] * y[j];
        y[i] = w;
    }

/*L8:*/    for (i = n - 1; i >= 0; i--) {
        w = y[i];
/*L9:*/        for (j = i + 1; j < n; j++)
            w -= A[i][j] * x[j];
        x[i] = w / A[i][i];
    }
}
