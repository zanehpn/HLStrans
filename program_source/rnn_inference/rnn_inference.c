// ---- file: rnn_inference.cpp ----
#include <cmath>
#include <cstring>

#define INPUT_SIZE 1024
#define HIDDEN_SIZE 512
#define OUTPUT_SIZE 256

void rnn_inference(
    float input[INPUT_SIZE],
    float hidden_state[HIDDEN_SIZE],
    float output[OUTPUT_SIZE],
    float input_weights[INPUT_SIZE][HIDDEN_SIZE],
    float hidden_weights[HIDDEN_SIZE][HIDDEN_SIZE],
    float output_weights[HIDDEN_SIZE][OUTPUT_SIZE],
    float hidden_bias[HIDDEN_SIZE],
    float output_bias[OUTPUT_SIZE])
{
#pragma HLS ARRAY_PARTITION variable=output_bias type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=hidden_bias type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=output_weights type=cyclic dim=2 factor=16
#pragma HLS ARRAY_PARTITION variable=output_weights type=cyclic dim=1 factor=4
#pragma HLS ARRAY_PARTITION variable=hidden_weights type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=hidden_weights type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input_weights type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=input_weights type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=hidden_state type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    float temp_hidden[HIDDEN_SIZE];
    float temp_output[OUTPUT_SIZE];

    // Compute new hidden state
    for (int i = 0; i < HIDDEN_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        temp_hidden[i] = hidden_bias[i];
        for (int j = 0; j < INPUT_SIZE; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=4
            temp_hidden[i] += input[j] * input_weights[j][i];
        }
        for (int j = 0; j < HIDDEN_SIZE; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
            temp_hidden[i] += hidden_state[j] * hidden_weights[j][i];
        }
        temp_hidden[i] = tanh(temp_hidden[i]);
    }

    // Compute output
    for (int i = 0; i < OUTPUT_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        temp_output[i] = output_bias[i];
        for (int j = 0; j < HIDDEN_SIZE; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
            temp_output[i] += temp_hidden[j] * output_weights[j][i];
        }
    }

    // Update hidden state
    for (int i = 0; i < HIDDEN_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        hidden_state[i] = temp_hidden[i];
    }

    // Update output
    for (int i = 0; i < OUTPUT_SIZE; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        output[i] = temp_output[i];
    }
}

// Top function name: rnn_inference
