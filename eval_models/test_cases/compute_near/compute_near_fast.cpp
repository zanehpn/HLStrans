#include <hls_math.h>
#include <ap_int.h>

const int NUM_FEATURE = 2;
const int NUM_PT_IN_SEARCHSPACE = 1024*1024;
const int NUM_PT_IN_BUFFER = 512;
const int NUM_TILES = NUM_PT_IN_SEARCHSPACE / NUM_PT_IN_BUFFER;
const int UNROLL_FACTOR = 2;
const int DWIDTH = 512;
#define INTERFACE_WIDTH ap_uint<DWIDTH>
const int WIDTH_FACTOR = DWIDTH/32;

extern "C"{
void compute_near(
    float inputQuery[NUM_FEATURE],
    float searchSpace[NUM_PT_IN_SEARCHSPACE*NUM_FEATURE],
    float distance[NUM_PT_IN_SEARCHSPACE]
){
    #pragma HLS INTERFACE m_axi port=inputQuery offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=inputQuery bundle=control
    #pragma HLS INTERFACE m_axi port=searchSpace offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=searchSpace bundle=control
    #pragma HLS INTERFACE m_axi port=distance offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=distance bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    INTERFACE_WIDTH searchSpaceBuffer[NUM_PT_IN_BUFFER/WIDTH_FACTOR];
    #pragma HLS ARRAY_PARTITION variable=searchSpaceBuffer complete dim=1
    #pragma HLS RESOURCE variable=searchSpaceBuffer core=RAM_2P_BRAM

    float sum;
    float feature_delta;
    float localInputQuery[NUM_FEATURE];
    #pragma HLS ARRAY_PARTITION variable=localInputQuery complete dim=1

    // Copy inputQuery to local memory for better access pattern
    COPY_INPUTQUERY:
    for(int j = 0; j < NUM_FEATURE; ++j){
        localInputQuery[j] = inputQuery[j];
    }

    // Process each tile of search space
    for(int tile = 0; tile < NUM_TILES; ++tile){
        // Load a tile of search space into buffer
        LOAD_TILE:
        for(int i = 0; i < NUM_PT_IN_BUFFER/WIDTH_FACTOR; ++i){
            searchSpaceBuffer[i] = searchSpace[tile*NUM_PT_IN_BUFFER/WIDTH_FACTOR + i];
        }

        // Compute distances for the loaded tile
        COMPUTE_TILE:
        for(int i = 0; i < NUM_PT_IN_BUFFER; ++i){
            sum = 0.0;
            #pragma HLS PIPELINE II=1
            for(int j = 0; j < NUM_FEATURE; ++j){
                #pragma HLS UNROLL factor=UNROLL_FACTOR
                feature_delta = ((float*)&searchSpaceBuffer[i/WIDTH_FACTOR])[i%WIDTH_FACTOR*NUM_FEATURE + j] - localInputQuery[j];
                sum += feature_delta*feature_delta;
            }
            distance[tile*NUM_PT_IN_BUFFER + i] = sum;
        }
    }
}
}