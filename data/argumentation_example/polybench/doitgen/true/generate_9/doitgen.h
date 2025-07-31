#ifndef DOITGEN_H_
#define DOITGEN_H_

#include <ap_fixed.h>
#include <ap_int.h>
#include <hls_stream.h>

#define TILE_P 8
#define TILE_S 8

void doitgen(int nr, int nq, int np, double A[25][20][30], double C4[30][30], double sum[30]);

#endif // DOITGEN_H_