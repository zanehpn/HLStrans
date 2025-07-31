#ifndef CORRELATION_H_
#define CORRELATION_H_

#define N 100
#define M 80
#define BLOCK_SIZE 50

void correlation(double float_n, double data[N][M], double corr[M][M], double mean[M], double stddev[M]);

#endif