#ifndef ADI_H
#define ADI_H

#define N 60
#define TILE_SIZE 16
#define PARTITION_FACTOR 4

void adi(int tsteps, int n, double u[N][N], double v[N][N], double p[N][N], double q[N][N]);

#endif