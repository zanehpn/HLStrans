#ifndef ATAX_H
#define ATAX_H

#define N 32
#define TILE_SIZE 8
#define PARTITION_FACTOR 4

typedef float DATA_TYPE;

void compute_y(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y[N]);
void compute_y_out(DATA_TYPE A[N][N], DATA_TYPE y[N], DATA_TYPE y_out[N]);
void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]);

#endif // ATAX_H