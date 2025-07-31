#ifndef DOITGEN_H
#define DOITGEN_H

#define TILE_S 10
#define TILE_P 15
#define UNROLL_S 10
#define UNROLL_P 15

void doitgen(int nr, int nq, int np, double A[25][20][30], double C4[30][30], double sum[30]);

// Sub-function declarations
void process_A_tile(int r, int q, int s_tile, double A[25][20][30], double local_A[TILE_S]);
void load_C4_tile(int s_tile, int p_tile, double C4[30][30], double local_C4[TILE_S][TILE_P]);
void compute_partial_sum(double local_A[TILE_S], double local_C4[TILE_S][TILE_P], double sum[TILE_P]);

#endif