#ifndef DOITGEN_H
#define DOITGEN_H

#define TILE_SIZE 6

void load_C4(double C4_buffer[30][30], double C4[30][30]);
void compute_tile(int r, int q, double A[25][20][30], double C4_buffer[30][30], double sum_buffer[30]);
void store_result(int r, int q, double A[25][20][30], double sum_buffer[30]);
void doitgen(int nr, int nq, int np, double A[25][20][30], double C4[30][30], double sum[30]);

#endif