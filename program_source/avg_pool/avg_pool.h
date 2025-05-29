
#define PAR_IN_FM_DEPTH  512
#define PAR_IN_FM_HEIGHT  7
#define PAR_IN_FM_WIDTH  7

#define PAR_TILE_DEPTH  16
#define PAR_TILE_HEIGHT  7
#define PAR_TILE_WIDTH  7

typedef float fm_t;

void avg_pool(
    fm_t in[PAR_IN_FM_DEPTH][PAR_IN_FM_HEIGHT][PAR_IN_FM_WIDTH],
    fm_t out[PAR_IN_FM_DEPTH]
);
