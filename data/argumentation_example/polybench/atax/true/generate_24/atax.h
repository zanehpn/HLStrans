#ifndef __ATAX_H__
#define __ATAX_H__

#include <hls_stream.h>
#include <ap_int.h>

#define N 32
#define TILE_SIZE 8

typedef float DATA_TYPE;

void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]);

#endif