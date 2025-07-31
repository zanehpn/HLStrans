// adi.h
#ifndef ADI_H_
#define ADI_H_

#include <ap_int.h>

#define N 60

void adi(int tsteps, int n, double u[N][N], double v[N][N], double p[N][N], double q[N][N]);

#endif