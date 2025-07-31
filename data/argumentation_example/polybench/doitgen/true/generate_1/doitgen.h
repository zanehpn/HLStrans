#ifndef DOITGEN_H
#define DOITGEN_H

#define TILE_S 6
#define TILE_P 6
#define UNROLL_S TILE_S
#define UNROLL_P TILE_P

void doitgen(int nr, int nq, int np, double A[25][20][30], double C4[30][30], double sum[30]);

#endif