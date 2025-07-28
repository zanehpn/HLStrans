const int NUM_FEATURE = 2;
const int NUM_PT_IN_SEARCHSPACE = 1024*1024;
const int NUM_PT_IN_BUFFER = 512;
const int NUM_TILES = NUM_PT_IN_SEARCHSPACE / NUM_PT_IN_BUFFER;
const int UNROLL_FACTOR = 2;
const int DWIDTH = 512;
#define INTERFACE_WIDTH ap_uint<DWIDTH>
const int WIDTH_FACTOR = DWIDTH/32;
extern "C" {
void load (int flag, int load_idx, float* searchSpace, float* local_searchSpace)
{
    #pragma HLS INLINE OFF
    if (flag){
        int start_idx = load_idx * NUM_PT_IN_BUFFER * NUM_FEATURE;
L1:        LOAD_TILE: for (int i(0); i < NUM_PT_IN_BUFFER*NUM_FEATURE; ++i){
            local_searchSpace[i] = searchSpace[start_idx+i];
        }
    }
}

void compute (int flag, float* local_inputQuery, float* local_searchSpace, float* local_distance)
{
    #pragma HLS INLINE OFF
    if (flag){
        float sum;
        float feature_delta;
L2:        COMPUTE_TILE: for (int i = 0; i < NUM_PT_IN_BUFFER; i+=UNROLL_FACTOR) {
L3:            for (int j = 0; j < UNROLL_FACTOR; ++j){
                sum = 0.0;
L4:                for (int k = 0; k < NUM_FEATURE; ++k){
                    feature_delta = local_searchSpace[(i+j)*NUM_FEATURE+k] - local_inputQuery[k];
                    sum += feature_delta*feature_delta;
                }
                local_distance[i+j] = sum;
            }
        }	
    }
}

void store (int flag, int store_idx, float* local_distance, float* distance)
{
    #pragma HLS INLINE OFF
    if (flag){
        int start_idx = store_idx * NUM_PT_IN_BUFFER;
L5:        STORE_TILE: for (int i(0); i < NUM_PT_IN_BUFFER; ++i){
            distance[start_idx+i] = local_distance[i];
        }
    }
}

void knn(
	float inputQuery[NUM_FEATURE],
	float searchSpace[NUM_PT_IN_SEARCHSPACE*NUM_FEATURE],
    float distance[NUM_PT_IN_SEARCHSPACE]
){
    // #pragma HLS INTERFACE m_axi port=inputQuery offset=slave bundle=gmem
    // #pragma HLS INTERFACE s_axilite port=inputQuery bundle=control
    // #pragma HLS INTERFACE m_axi port=searchSpace offset=slave bundle=gmem
    // #pragma HLS INTERFACE s_axilite port=searchSpace bundle=control
    // #pragma HLS INTERFACE m_axi port=distance offset=slave bundle=gmem
    // #pragma HLS INTERFACE s_axilite port=distance bundle=control
    // #pragma HLS INTERFACE s_axilite port=return bundle=control

L6:	float local_inputQuery[NUM_FEATURE];
	
L7:    float local_searchSpace_0[NUM_PT_IN_BUFFER*NUM_FEATURE];
L8:    float local_searchSpace_1[NUM_PT_IN_BUFFER*NUM_FEATURE];
	
L9:    float local_distance_0[NUM_PT_IN_BUFFER];
L10:    float local_distance_1[NUM_PT_IN_BUFFER];
    
L11:	LOAD_INPUTQUERY: for (int i(0); i<NUM_FEATURE; ++i){
		local_inputQuery[i] = inputQuery[i];
    }
	
L12:	TILED_PE: for (int tile_idx(0); tile_idx<NUM_TILES+2; ++tile_idx){
		int load_flag = tile_idx >= 0 && tile_idx < NUM_TILES;
		int compute_flag = tile_idx >= 1 && tile_idx < NUM_TILES + 1;
		int store_flag = tile_idx >= 2 && tile_idx < NUM_TILES + 2;

	    if (tile_idx % 2 == 0) {
	    	load(load_flag, tile_idx, searchSpace, local_searchSpace_0);
			compute(compute_flag, local_inputQuery, local_searchSpace_1, local_distance_1);
			store(store_flag, tile_idx-2, local_distance_0, distance);
	    }
	    else {
	    	load(load_flag, tile_idx, searchSpace, local_searchSpace_1);
			compute(compute_flag, local_inputQuery, local_searchSpace_0, local_distance_0);
			store(store_flag, tile_idx-2, local_distance_1, distance);
	    }
	}

	return;
}
}
