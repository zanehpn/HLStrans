// MALLOC_VARIANT

#include <cmath>

#define INPUT_SIZE 1024
#define HIDDEN_SIZE 512
#define OUTPUT_SIZE 256

void backpropagation(
    float input[INPUT_SIZE],
    float hidden_weights[INPUT_SIZE][HIDDEN_SIZE],
    float output_weights[HIDDEN_SIZE][OUTPUT_SIZE],
    float hidden_bias[HIDDEN_SIZE],
    float output_bias[OUTPUT_SIZE],
    float target[OUTPUT_SIZE],
    float learning_rate)
{
    float* hidden_layer = new float[HIDDEN_SIZE];
    float* output_layer = new float[OUTPUT_SIZE];
    float* hidden_delta = new float[HIDDEN_SIZE];
    float* output_delta = new float[OUTPUT_SIZE];

    // Forward pass
    for (int i = 0; i < HIDDEN_SIZE; i++) {
        hidden_layer[i] = hidden_bias[i];
        for (int j = 0; j < INPUT_SIZE; j++) {
            hidden_layer[i] += input[j] * hidden_weights[j][i];
        }
        hidden_layer[i] = 1.0f / (1.0f + std::exp(-hidden_layer[i])); // Sigmoid activation
    }

    for (int i = 0; i < OUTPUT_SIZE; i++) {
        output_layer[i] = output_bias[i];
        for (int j = 0; j < HIDDEN_SIZE; j++) {
            output_layer[i] += hidden_layer[j] * output_weights[j][i];
        }
        output_layer[i] = 1.0f / (1.0f + std::exp(-output_layer[i])); // Sigmoid activation
    }

    // Backward pass
    for (int i = 0; i < OUTPUT_SIZE; i++) {
        output_delta[i] = (target[i] - output_layer[i]) * output_layer[i] * (1.0f - output_layer[i]);
    }

    for (int i = 0; i < HIDDEN_SIZE; i++) {
        hidden_delta[i] = 0.0f;
        for (int j = 0; j < OUTPUT_SIZE; j++) {
            hidden_delta[i] += output_delta[j] * output_weights[i][j];
        }
        hidden_delta[i] *= hidden_layer[i] * (1.0f - hidden_layer[i]);
    }

    // Update weights and biases
    for (int i = 0; i < OUTPUT_SIZE; i++) {
        output_bias[i] += learning_rate * output_delta[i];
        for (int j = 0; j < HIDDEN_SIZE; j++) {
            output_weights[j][i] += learning_rate * hidden_layer[j] * output_delta[i];
        }
    }

    for (int i = 0; i < HIDDEN_SIZE; i++) {
        hidden_bias[i] += learning_rate * hidden_delta[i];
        for (int j = 0; j < INPUT_SIZE; j++) {
            hidden_weights[j][i] += learning_rate * input[j] * hidden_delta[i];
        }
    }

    delete[] output_delta;
    delete[] hidden_delta;
    delete[] output_layer;
    delete[] hidden_layer;
}
