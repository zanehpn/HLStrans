#ifndef CORRELATION_H
#define CORRELATION_H

#define N 100
#define M 80
#define BLOCK_SIZE 16

void compute_mean(double float_n, double data[N][M], double mean[M]);
void compute_stddev(double float_n, double data[N][M], double mean[M], double stddev[M]);
void normalize_data(double float_n, double data[N][M], double mean[M], double stddev[M]);
void compute_correlation(double data[N][M], double corr[M][M]);
void correlation(double float_n, double data[N][M], double corr[M][M], double mean[M], double stddev[M]);

#endif