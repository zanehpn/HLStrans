// ---- file: lzw_compress.cpp ----
#include <ap_int.h>

#define DICT_SIZE 4096
#define MAX_BITS 12
#define INPUT_SIZE 1024

void lzw_compress(ap_uint<8> input[INPUT_SIZE], ap_uint<12> output[INPUT_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    ap_uint<12> dictionary[DICT_SIZE];
    ap_uint<12> dict_size = 256;
    ap_uint<12> current_code = 0;
    ap_uint<12> next_code = 256;

    for (int i = 0; i < 256; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        dictionary[i] = i;
    }

    ap_uint<12> prefix = input[0];
    int output_index = 0;

    for (int i = 1; i < INPUT_SIZE; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        ap_uint<8> character = input[i];
        ap_uint<12> combined = (prefix << 8) | character;

        bool found = false;
        for (int j = 0; j < dict_size; j++) {
            if (dictionary[j] == combined) {
                prefix = j;
                found = true;
                break;
            }
        }

        if (!found) {
            output[output_index++] = prefix;
            if (dict_size < DICT_SIZE) {
                dictionary[dict_size++] = combined;
            }
            prefix = character;
        }
    }

    output[output_index++] = prefix;
}

// Top function name: lzw_compress
