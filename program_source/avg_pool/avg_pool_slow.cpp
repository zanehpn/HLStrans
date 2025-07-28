#include <stddef.h>
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
) {
    const size_t spatial_size = PAR_IN_FM_HEIGHT * PAR_IN_FM_WIDTH;
    for (size_t d = 0; d < PAR_IN_FM_DEPTH; ++d) {
        fm_t sum = 0.0f;
        for (size_t i = 0; i < PAR_IN_FM_HEIGHT; ++i) {
            for (size_t j = 0; j < PAR_IN_FM_WIDTH; ++j) {
                sum += in[d][i][j];
            }
        }
        out[d] = sum / spatial_size;
    }
}