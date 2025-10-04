// ---- file: communications_processor.cpp ----
#include <ap_int.h>

#define ARRAY_SIZE 1024

void communications_processor(ap_int<32> input_data[ARRAY_SIZE], ap_int<32> output_data[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output_data type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=input_data type=cyclic dim=1 factor=2
    ap_int<32> temp_buffer[ARRAY_SIZE];

    // Step 1: Data Transformation
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        temp_buffer[i] = input_data[i] * 2 + 1;
    }

    // Step 2: Data Filtering
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (temp_buffer[i] % 3 == 0) {
            output_data[i] = temp_buffer[i];
        } else {
            output_data[i] = 0;
        }
    }

    // Step 3: Data Aggregation
    ap_int<32> sum = 0;
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        sum += output_data[i];
    }

    // Step 4: Normalize Output
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        output_data[i] = output_data[i] / (sum + 1);
    }
}

// Top function name: communications_processor
