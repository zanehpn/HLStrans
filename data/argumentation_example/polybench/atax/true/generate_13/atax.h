#ifndef ATAX_H
#define ATAX_H

#define N 32
#define TILE_SIZE 8
#define UNROLL_FACTOR 4
#define DATA_TYPE int

void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]);

#endif // ATAX_H