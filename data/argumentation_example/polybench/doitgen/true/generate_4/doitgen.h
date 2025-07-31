#ifndef DOITGEN_H_
#define DOITGEN_H_

#define TILE_S 6
#define TILE_P 5
#define UNROLL_S 6
#define UNROLL_P 5

void doitgen(int nr, int nq, int np, double A[25][20][30], double C4[30][30], double sum[30]);

#endif // DOITGEN_H_