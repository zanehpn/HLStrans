// Converted from communications_processor_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: communications_processor.cpp ----
#include <ap_int.h>

#define ARRAY_SIZE 1024

void communications_processor(ap_int<32> input_data[ARRAY_SIZE], ap_int<32> output_data[ARRAY_SIZE]) {

    ap_int<32> temp_buffer[ARRAY_SIZE];

    // Step 1: Data Transformation
    for (int i = 0; i < ARRAY_SIZE; i++) {

        temp_buffer[i] = input_data[i] * 2 + 1;
    }

    // Step 2: Data Filtering
    for (int i = 0; i < ARRAY_SIZE; i++) {

        if (temp_buffer[i] % 3 == 0) {
            output_data[i] = temp_buffer[i];
        } else {
            output_data[i] = 0;
        }
    }

    // Step 3: Data Aggregation
    ap_int<32> sum = 0;
    for (int i = 0; i < ARRAY_SIZE; i++) {

        sum += output_data[i];
    }

    // Step 4: Normalize Output
    for (int i = 0; i < ARRAY_SIZE; i++) {

        output_data[i] = output_data[i] / (sum + 1);
    }
}

// Top function name: communications_processor
