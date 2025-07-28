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
    
    float sum;
    float feature_delta;
L1:    for(int i = 0; i < NUM_PT_IN_SEARCHSPACE; ++i){
        sum = 0.0;
L2:        for(int j = 0; j < NUM_FEATURE; ++j){
            feature_delta = searchSpace[i*NUM_FEATURE+j] - inputQuery[j];
            sum += feature_delta*feature_delta;
        }
        distance[i] = sum;
    }

    return;
}
}