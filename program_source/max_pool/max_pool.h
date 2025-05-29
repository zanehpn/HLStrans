// -----------------------------------------------------------------------------
// pooling parameters
// -----------------------------------------------------------------------------
#include <ap_fixed.h>
#include <algorithm>
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
#define MAX_H_IN       224   // maximum input height
#define MAX_W_IN       224   // maximum input width

typedef ap_fixed<16, 5> data_t;

void max_pool(
    int C, int H_IN, int W_IN,
    data_t input[MAX_C][MAX_H_IN][MAX_W_IN],
    int H_OUT, int W_OUT,
    data_t output[MAX_C][MAX_H_IN][MAX_W_IN]   // Output region [C][H_OUT][W_OUT]
);