// Converted from rnn_inference_origin.c to .cpp by convert_and_transform_with_deepseek.py

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

    float temp_hidden[HIDDEN_SIZE];
    float temp_output[OUTPUT_SIZE];

    // Compute new hidden state
    for (int i = 0; i < HIDDEN_SIZE; i++) {

        temp_hidden[i] = hidden_bias[i];
        for (int j = 0; j < INPUT_SIZE; j++) {

            temp_hidden[i] += input[j] * input_weights[j][i];
        }
        for (int j = 0; j < HIDDEN_SIZE; j++) {

            temp_hidden[i] += hidden_state[j] * hidden_weights[j][i];
        }
        temp_hidden[i] = tanh(temp_hidden[i]);
    }

    // Compute output
    for (int i = 0; i < OUTPUT_SIZE; i++) {

        temp_output[i] = output_bias[i];
        for (int j = 0; j < HIDDEN_SIZE; j++) {

            temp_output[i] += temp_hidden[j] * output_weights[j][i];
        }
    }

    // Update hidden state
    for (int i = 0; i < HIDDEN_SIZE; i++) {

        hidden_state[i] = temp_hidden[i];
    }

    // Update output
    for (int i = 0; i < OUTPUT_SIZE; i++) {

        output[i] = temp_output[i];
    }
}

// Top function name: rnn_inference
