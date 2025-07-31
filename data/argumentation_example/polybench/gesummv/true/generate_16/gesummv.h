#ifndef GESUMMV_H
#define GESUMMV_H

#define N 64
#define TILE_SIZE 16
#define DATA_TYPE float

void gesummv(DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE A[N][N], DATA_TYPE B[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]);

#endif // GESUMMV_H