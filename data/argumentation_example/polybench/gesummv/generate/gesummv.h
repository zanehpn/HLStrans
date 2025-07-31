#ifndef __GESUMMV_H__
#define __GESUMMV_H__

#define N 128
#define DATA_TYPE float

void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]);

#endif