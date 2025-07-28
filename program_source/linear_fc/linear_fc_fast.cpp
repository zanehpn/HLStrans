

typedef float fm_t;
typedef float wt_t;

template<int NI, int NO>
void linear_fc_core(
    const fm_t in[NI],
    fm_t out[NO],
    const wt_t weights[NO][NI]
)
{
    //#pragma HLS array_partition variable=out complete
    //#pragma HLS array_partition variable=weights complete dim=1


    FC_INPUT:
    for (int i = 0; i < NI; i++){
    FC_OUTPUT:
        for (int j = 0; j < NO; j++){
        #pragma HLS pipeline II=1
            fm_t x = out[j];
            x += weights[j][i] * in[i];
            out[j] = x;
        }
    }
}

void linear_fc(
    const fm_t in[512],
    fm_t out[],
    const wt_t weights[][512],
    const wt_t biases[]
)
{
    #pragma HLS inline off

    const int in_fm_depth = 512;
    const int out_fm_depth = 1024;


    const int in_buf_depth = 512;
    const int out_buf_depth = 16;

    const int N_OP_TILES = out_fm_depth / out_buf_depth;

    static fm_t in_buf[in_buf_depth];
    static fm_t out_buf[out_buf_depth];
    static fm_t wt_buf[out_buf_depth][in_buf_depth];

    for (int t = 0; t < N_OP_TILES; t++)
    {
        // Load weights
        for (int i = 0; i < out_buf_depth; i++)
        {
            for (int j = 0; j < in_buf_depth; j++)
            {
                #pragma HLS pipeline II=1
                wt_buf[i][j] = weights[t*out_buf_depth + i][j];
            }
        }

        // Load biases into out_buf
        for (int i = 0; i < out_buf_depth; i++)
        {
            #pragma HLS pipeline II=1
            out_buf[i] = biases[t*out_buf_depth + i];
        }

        // Compute
        linear_fc_core<in_buf_depth, out_buf_depth>(in, out_buf, wt_buf);

        // Write output
        for (int i = 0; i < out_buf_depth; i++)
        {
            #pragma HLS pipeline II=1
            out[t*out_buf_depth + i] = out_buf[i];
        }
    }
}

