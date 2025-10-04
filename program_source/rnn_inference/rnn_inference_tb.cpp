// contents of rnn_inference_tb.cpp
#include <iostream>
#include <iomanip>
#include <cmath>
#include <cstring>

// Mirror interface and sizes from rnn_inference.cpp
#define INPUT_SIZE 1024
#define HIDDEN_SIZE 512
#define OUTPUT_SIZE 256

extern void rnn_inference(
    float input[INPUT_SIZE],
    float hidden_state[HIDDEN_SIZE],
    float output[OUTPUT_SIZE],
    float input_weights[INPUT_SIZE][HIDDEN_SIZE],
    float hidden_weights[HIDDEN_SIZE][HIDDEN_SIZE],
    float output_weights[HIDDEN_SIZE][OUTPUT_SIZE],
    float hidden_bias[HIDDEN_SIZE],
    float output_bias[OUTPUT_SIZE]);

static const float EPS = 1e-4f;

static bool approx_equal(float a, float b, float eps = EPS) {
    return std::fabs(a - b) <= eps;
}

static int check_all_close(const float* arr, size_t n, float expected, const char* name) {
    int errors = 0;
    for (size_t i = 0; i < n; ++i) {
        if (!approx_equal(arr[i], expected)) {
            if (errors < 5) {
                std::cout << "  Mismatch in " << name << "[" << i << "]: got " << arr[i]
                          << ", expected " << expected << "\n";
            }
            ++errors;
        }
    }
    return errors;
}

int main() {
    std::cout << std::fixed << std::setprecision(6);

    // Allocate test buffers statically to avoid stack overflow
    static float input[INPUT_SIZE];
    static float hidden_state[HIDDEN_SIZE];
    static float output[OUTPUT_SIZE];
    static float input_weights[INPUT_SIZE][HIDDEN_SIZE];
    static float hidden_weights[HIDDEN_SIZE][HIDDEN_SIZE];
    static float output_weights[HIDDEN_SIZE][OUTPUT_SIZE];
    static float hidden_bias[HIDDEN_SIZE];
    static float output_bias[OUTPUT_SIZE];

    int total_errors = 0;

    // Test 1: All zeros -> expect all outputs and hidden_state to be zero
    std::cout << "Test 1: Zero input, zero weights, zero bias -> expect all zeros\n";
    std::memset(input, 0, sizeof(input));
    std::memset(hidden_state, 0, sizeof(hidden_state));
    std::memset(output, 0, sizeof(output));
    std::memset(input_weights, 0, sizeof(input_weights));
    std::memset(hidden_weights, 0, sizeof(hidden_weights));
    std::memset(output_weights, 0, sizeof(output_weights));
    std::memset(hidden_bias, 0, sizeof(hidden_bias));
    std::memset(output_bias, 0, sizeof(output_bias));

    rnn_inference(input, hidden_state, output,
                  input_weights, hidden_weights, output_weights,
                  hidden_bias, output_bias);

    {
        int err = 0;
        err += check_all_close(hidden_state, HIDDEN_SIZE, 0.0f, "hidden_state");
        err += check_all_close(output, OUTPUT_SIZE, 0.0f, "output");
        std::cout << (err == 0 ? "  PASS\n" : "  FAIL (" + std::to_string(err) + " mismatches)\n");
        total_errors += err;
    }

    // Test 2: Single input drives one hidden neuron and one output
    // - input[0] = 0.5
    // - input_weights[0][0] = 1.0 -> temp_hidden[0] = tanh(0.5)
    // - output_weights[0][0] = 1.0 -> output[0] = temp_hidden[0]
    std::cout << "Test 2: Input-driven activation for one hidden neuron and mapped to one output\n";
    std::memset(input, 0, sizeof(input));
    std::memset(hidden_state, 0, sizeof(hidden_state));
    std::memset(output, 0, sizeof(output));
    std::memset(input_weights, 0, sizeof(input_weights));
    std::memset(hidden_weights, 0, sizeof(hidden_weights));
    std::memset(output_weights, 0, sizeof(output_weights));
    std::memset(hidden_bias, 0, sizeof(hidden_bias));
    std::memset(output_bias, 0, sizeof(output_bias));

    input[0] = 0.5f;
    input_weights[0][0] = 1.0f;      // map input[0] to hidden[0]
    output_weights[0][0] = 1.0f;     // map hidden[0] to output[0]

    rnn_inference(input, hidden_state, output,
                  input_weights, hidden_weights, output_weights,
                  hidden_bias, output_bias);

    {
        float expected_h = std::tanh(0.5f);
        int err = 0;
        // Check hidden_state[0]
        if (!approx_equal(hidden_state[0], expected_h)) {
            std::cout << "  Mismatch hidden_state[0]: got " << hidden_state[0]
                      << ", expected " << expected_h << "\n";
            ++err;
        }
        // All other hidden units should be ~0
        for (int i = 1; i < HIDDEN_SIZE; ++i) {
            if (!approx_equal(hidden_state[i], 0.0f)) {
                if (err < 5) {
                    std::cout << "  Unexpected nonzero hidden_state[" << i << "] = "
                              << hidden_state[i] << "\n";
                }
                ++err;
            }
        }
        // Check output[0]
        if (!approx_equal(output[0], expected_h)) {
            std::cout << "  Mismatch output[0]: got " << output[0]
                      << ", expected " << expected_h << "\n";
            ++err;
        }
        // All other outputs should be ~0
        for (int i = 1; i < OUTPUT_SIZE; ++i) {
            if (!approx_equal(output[i], 0.0f)) {
                if (err < 5) {
                    std::cout << "  Unexpected nonzero output[" << i << "] = "
                              << output[i] << "\n";
                }
                ++err;
            }
        }
        std::cout << (err == 0 ? "  PASS\n" : "  FAIL (" + std::to_string(err) + " mismatches)\n");
        total_errors += err;
    }

    // Test 3: Hidden-state-driven activation via recurrent weights
    // - hidden_state[1] = 0.3
    // - hidden_weights[1][1] = 1.0 -> temp_hidden[1] = tanh(0.3)
    // - output_weights[1][1] = 1.0 -> output[1] = temp_hidden[1]
    std::cout << "Test 3: Recurrent activation from hidden_state through hidden_weights to output\n";
    std::memset(input, 0, sizeof(input));
    std::memset(hidden_state, 0, sizeof(hidden_state));
    std::memset(output, 0, sizeof(output));
    std::memset(input_weights, 0, sizeof(input_weights));
    std::memset(hidden_weights, 0, sizeof(hidden_weights));
    std::memset(output_weights, 0, sizeof(output_weights));
    std::memset(hidden_bias, 0, sizeof(hidden_bias));
    std::memset(output_bias, 0, sizeof(output_bias));

    hidden_state[1] = 0.3f;          // prior hidden state
    hidden_weights[1][1] = 1.0f;     // recurrent self-connection
    output_weights[1][1] = 1.0f;     // map hidden[1] to output[1]

    rnn_inference(input, hidden_state, output,
                  input_weights, hidden_weights, output_weights,
                  hidden_bias, output_bias);

    {
        float expected_h = std::tanh(0.3f);
        int err = 0;
        if (!approx_equal(hidden_state[1], expected_h)) {
            std::cout << "  Mismatch hidden_state[1]: got " << hidden_state[1]
                      << ", expected " << expected_h << "\n";
            ++err;
        }
        for (int i = 0; i < HIDDEN_SIZE; ++i) {
            if (i == 1) continue;
            if (!approx_equal(hidden_state[i], 0.0f)) {
                if (err < 5) {
                    std::cout << "  Unexpected nonzero hidden_state[" << i << "] = "
                              << hidden_state[i] << "\n";
                }
                ++err;
            }
        }
        if (!approx_equal(output[1], expected_h)) {
            std::cout << "  Mismatch output[1]: got " << output[1]
                      << ", expected " << expected_h << "\n";
            ++err;
        }
        for (int i = 0; i < OUTPUT_SIZE; ++i) {
            if (i == 1) continue;
            if (!approx_equal(output[i], 0.0f)) {
                if (err < 5) {
                    std::cout << "  Unexpected nonzero output[" << i << "] = "
                              << output[i] << "\n";
                }
                ++err;
            }
        }
        std::cout << (err == 0 ? "  PASS\n" : "  FAIL (" + std::to_string(err) + " mismatches)\n");
        total_errors += err;
    }

    // Test 4: Output bias only -> output should equal bias, hidden stays zero
    std::cout << "Test 4: Output bias only -> output equals bias, hidden_state remains zero\n";
    std::memset(input, 0, sizeof(input));
    std::memset(hidden_state, 0, sizeof(hidden_state));
    std::memset(output, 0, sizeof(output));
    std::memset(input_weights, 0, sizeof(input_weights));
    std::memset(hidden_weights, 0, sizeof(hidden_weights));
    std::memset(output_weights, 0, sizeof(output_weights));
    std::memset(hidden_bias, 0, sizeof(hidden_bias));
    std::memset(output_bias, 0, sizeof(output_bias));

    int bias_idx = 42;
    float bias_val = 1.2345f;
    output_bias[bias_idx] = bias_val;

    rnn_inference(input, hidden_state, output,
                  input_weights, hidden_weights, output_weights,
                  hidden_bias, output_bias);

    {
        int err = 0;
        // Hidden should remain zero
        err += check_all_close(hidden_state, HIDDEN_SIZE, 0.0f, "hidden_state");
        // Output should be zero everywhere except bias_idx
        for (int i = 0; i < OUTPUT_SIZE; ++i) {
            float expected = (i == bias_idx) ? bias_val : 0.0f;
            if (!approx_equal(output[i], expected)) {
                if (err < 5) {
                    std::cout << "  Mismatch output[" << i << "]: got " << output[i]
                              << ", expected " << expected << "\n";
                }
                ++err;
            }
        }
        std::cout << (err == 0 ? "  PASS\n" : "  FAIL (" + std::to_string(err) + " mismatches)\n");
        total_errors += err;
    }

    if (total_errors == 0) {
        std::cout << "All tests PASSED\n";
        return 0;
    } else {
        std::cout << "Some tests FAILED: total mismatches = " << total_errors << "\n";
        return 1;
    }
}