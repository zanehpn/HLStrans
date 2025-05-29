#include <ap_fixed.h>
#define  N_TILE_ROWS 2
#define  N_TILE_COLS 2
#define  N_TILE_LAYERS 2
#define  KERNEL_GROUPS 2

const int IN_BUF_DEPTH = 16;
const int OUT_BUF_DEPTH = 16;
const int BUF_HEIGHT = 7;
const int BUF_WIDTH = 7;

typedef ap_fixed<16,3> fm_t;
typedef ap_fixed<16,3> wt_t;

void conv_ds(
    fm_t out_feature_map[],
    fm_t in_feature_map[],
    wt_t layer_weights[],
    wt_t layer_bias[]
);
