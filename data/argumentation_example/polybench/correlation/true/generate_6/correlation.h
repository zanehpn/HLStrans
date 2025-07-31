#ifndef CORRELATION_H_
#define CORRELATION_H_

#include <hls_stream.h>

#define N 100
#define M 80
#define TILE_SIZE 32

void correlation(double float_n, double data[N][M], double corr[M][M], double mean[M], double stddev[M]);

#endif // CORRELATION_H_