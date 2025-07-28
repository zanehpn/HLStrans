
#include <ap_fixed.h>
#include <algorithm>
#include <hls_math.h>
#include <stdio.h>
#include <stdlib.h>   // for ceil
#include <math.h>     // for ceil
#define K_H            2    // kernel height
#define K_W            2    // kernel width
#define STRIDE_H       2    // vertical stride
#define STRIDE_W       2    // horizontal stride

// -----------------------------------------------------------------------------
// tiling parameters
// -----------------------------------------------------------------------------
#define BLOCK_C        16   // channels per tile
#define BLOCK_H        8    // output rows  per tile
#define BLOCK_W        8    // output cols  per tile

// -----------------------------------------------------------------------------
// local buffer dimensions: derived from BLOCK_* and kernel/stride
// -----------------------------------------------------------------------------
#define MAX_LOCAL_IN_H  ((BLOCK_H - 1) * STRIDE_H + K_H)
#define MAX_LOCAL_IN_W  ((BLOCK_W - 1) * STRIDE_W + K_W)

// -----------------------------------------------------------------------------
// global array bounds (input/output max sizes)
// -----------------------------------------------------------------------------
#define MAX_C          64    // maximum total channels
#define MAX_H         224   // maximum input height
#define MAX_W         224   // maximum input width

typedef ap_fixed<16, 5> data_t;

void matrix_add(
    int C, int H, int W,
    data_t in1[MAX_C][MAX_H][MAX_W],
    data_t in2[MAX_C][MAX_H][MAX_W],
    data_t out[MAX_C][MAX_H][MAX_W]
  );