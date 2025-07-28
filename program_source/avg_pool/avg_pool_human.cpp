#include "avg_pool.h"

int index_calc(int idx_d, int idx_h, int idx_w, int IN_FM_HEIGHT, int IN_FM_WIDTH)
{
    #pragma HLS inline off
    return idx_d*IN_FM_HEIGHT*IN_FM_WIDTH + idx_h*IN_FM_WIDTH + idx_w;
}

template<int ID, int IH, int IW>
void avg_pool_core(
    fm_t in[ID][IH][IW],
    fm_t out[ID]
)
{
    const fm_t factor = (fm_t) (16.0 / (IH * IW));


    // Zero outputs
OUT_FEAT:
    for (int c = 0; c < ID; c++){
        #pragma HLS PIPELINE off
    IN_ROW:
        fm_t sum = 0;
        for (int i = 0; i < IH; i++){
            #pragma HLS PIPELINE off
        IN_COL:
            for (int j = 0; j < IW; j++){
                #pragma HLS BIND_OP variable=sum op=add impl=dsp
                #pragma HLS PIPELINE off
                sum += in[c][i][j] / 16;
            }
        }
        out[c] = sum * factor;
    }
}

void avg_pool(
    fm_t in[PAR_IN_FM_DEPTH][PAR_IN_FM_HEIGHT][PAR_IN_FM_WIDTH],
    fm_t out[PAR_IN_FM_DEPTH]
)
{
    #pragma HLS inline off

    #pragma HLS INTERFACE m_axi depth=1  port=in   bundle=fm_in
    #pragma HLS INTERFACE m_axi depth=1  port=out  bundle=fm_out
    #pragma HLS INTERFACE s_axilite register	port=return

    static fm_t in_tile[PAR_TILE_DEPTH][PAR_TILE_HEIGHT][PAR_TILE_WIDTH];
    static fm_t out_tile[PAR_TILE_DEPTH];

    const int N_TILES =  PAR_IN_FM_DEPTH / PAR_TILE_DEPTH;


    TILE:
    for (int t = 0; t < N_TILES; t++)
    {
        // Load input tile
    INP_DEPTH:
        for (int c = 0; c < PAR_TILE_DEPTH; c++)
        {
        INP_ROW:
            for (int i = 0; i < PAR_TILE_HEIGHT; i++)
            {
            INP_COL:
                for (int j = 0; j < PAR_TILE_WIDTH; j++)
                {
                    #pragma HLS PIPELINE II=1 
                    in_tile[c][i][j] = in[t*PAR_TILE_DEPTH + c][i][j];
                }
            }
        }

        // Compute output tile
        avg_pool_core<PAR_TILE_DEPTH, PAR_TILE_HEIGHT, PAR_TILE_WIDTH>(in_tile, out_tile);

        // Store output tile
    STORE_TILE:
        for (int c = 0; c < PAR_TILE_DEPTH; c++)
        {
            #pragma HLS PIPELINE II=1 
            out[t*PAR_TILE_DEPTH + c] = out_tile[c];
        }
    }
}
