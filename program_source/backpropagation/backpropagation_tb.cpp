// contents of backpropagation_tb.cpp
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <cstring>
#include <cassert>

// Match the definitions in backpropagation.cpp
#define INPUT_SIZE 1024
#define HIDDEN_SIZE 512
#define OUTPUT_SIZE 256

// Prototype of the function under test
void backpropagation(
    float input[INPUT_SIZE],
    float hidden_weights[INPUT_SIZE][HIDDEN_SIZE],
    float output_weights[HIDDEN_SIZE][OUTPUT_SIZE],
    float hidden_bias[HIDDEN_SIZE],
    float output_bias[OUTPUT_SIZE],
    float target[OUTPUT_SIZE],
    float learning_rate);

// Helper: forward pass to compute outputs (mirrors backpropagation.cpp forward logic)
static void forward_pass(
    const float input[INPUT_SIZE],
    const float hidden_weights[INPUT_SIZE][HIDDEN_SIZE],
    const float output_weights[HIDDEN_SIZE][OUTPUT_SIZE],
    const float hidden_bias[HIDDEN_SIZE],
    const float output_bias[OUTPUT_SIZE],
    float out_output[OUTPUT_SIZE])
{
    float hidden_layer[HIDDEN_SIZE];

    // Hidden layer = sigmoid(bias + input * weights)
    for (int i = 0; i < HIDDEN_SIZE; i++) {
        float acc = hidden_bias[i];
        for (int j = 0; j < INPUT_SIZE; j++) {
            acc += input[j] * hidden_weights[j][i];
        }
        hidden_layer[i] = 1.0f / (1.0f + std::exp(-acc));
    }

    // Output layer = sigmoid(bias + hidden * weights)
    for (int i = 0; i < OUTPUT_SIZE; i++) {
        float acc = output_bias[i];
        for (int j = 0; j < HIDDEN_SIZE; j++) {
            acc += hidden_layer[j] * output_weights[j][i];
        }
        out_output[i] = 1.0f / (1.0f + std::exp(-acc));
    }
}

// Helper: compute mean squared error between target and output
static float mse_loss(const float target[OUTPUT_SIZE], const float output[OUTPUT_SIZE]) {
    double sse = 0.0;
    for (int i = 0; i < OUTPUT_SIZE; i++) {
        float d = target[i] - output[i];
        sse += double(d) * double(d);
    }
    return float(sse / double(OUTPUT_SIZE));
}

// Global buffers to avoid stack overflows
static float g_input[INPUT_SIZE];
static float g_hidden_weights[INPUT_SIZE][HIDDEN_SIZE];
static float g_output_weights[HIDDEN_SIZE][OUTPUT_SIZE];
static float g_hidden_bias[HIDDEN_SIZE];
static float g_output_bias[OUTPUT_SIZE];
static float g_target[OUTPUT_SIZE];

static void fill_zero_all() {
    // Zero all arrays
    for (int i = 0; i < INPUT_SIZE; i++) g_input[i] = 0.0f;
    for (int j = 0; j < HIDDEN_SIZE; j++) g_hidden_bias[j] = 0.0f;
    for (int i = 0; i < OUTPUT_SIZE; i++) {
        g_output_bias[i] = 0.0f;
        g_target[i] = 0.0f;
    }
    for (int i = 0; i < INPUT_SIZE; i++) {
        for (int j = 0; j < HIDDEN_SIZE; j++) {
            g_hidden_weights[i][j] = 0.0f;
        }
    }
    for (int i = 0; i < HIDDEN_SIZE; i++) {
        for (int j = 0; j < OUTPUT_SIZE; j++) {
            g_output_weights[i][j] = 0.0f;
        }
    }
}

static void init_deterministic_small() {
    // Deterministic, bounded initialization for reproducibility and stability
    for (int i = 0; i < INPUT_SIZE; i++) {
        // values in [-0.2, 0.2] repeating
        g_input[i] = float((i % 5) - 2) * 0.1f;
    }
    for (int j = 0; j < HIDDEN_SIZE; j++) {
        // biases in {-0.01, 0.0, 0.01}
        g_hidden_bias[j] = 0.01f * float((j % 3) - 1);
    }
    for (int i = 0; i < OUTPUT_SIZE; i++) {
        // biases in {-0.01, 0.0, 0.01}
        g_output_bias[i] = 0.01f * float((i % 3) - 1);
        // targets alternating 0,1
        g_target[i] = (i % 2 == 0) ? 0.0f : 1.0f;
    }
    for (int i = 0; i < INPUT_SIZE; i++) {
        for (int j = 0; j < HIDDEN_SIZE; j++) {
            // in approximately [-6e-4, +12e-4]
            g_hidden_weights[i][j] = 0.0001f * float((i % 13) - (j % 7));
        }
    }
    for (int i = 0; i < HIDDEN_SIZE; i++) {
        for (int j = 0; j < OUTPUT_SIZE; j++) {
            // in approximately [-5e-4, +10e-4]
            g_output_weights[i][j] = 0.0001f * float((i % 11) - (j % 5));
        }
    }
}

int main() {
    const float tol = 1e-6f;

    // Test 1: Zero initialization with target=1 ensures specific, predictable updates on output layer
    // - With all inputs/weights/biases=0, hidden sigmoid=0.5, output sigmoid=0.5
    // - output_delta = (1 - 0.5) * 0.5 * 0.5 = 0.125
    // - hidden_delta = 0 (since output_weights are 0)
    // - output_bias += lr * 0.125
    // - output_weights += lr * 0.5 * 0.125
    // - hidden_bias and hidden_weights unchanged
    {
        std::puts("Test 1: Zero-initialization predictable update on output parameters");
        fill_zero_all();
        for (int i = 0; i < OUTPUT_SIZE; i++) g_target[i] = 1.0f;  // target all ones
        const float lr = 0.1f;

        backpropagation(g_input, g_hidden_weights, g_output_weights, g_hidden_bias, g_output_bias, g_target, lr);

        // Expected values
        const float expected_output_delta = 0.125f;
        const float expected_output_bias = lr * expected_output_delta;                     // 0.0125
        const float expected_output_weight = lr * 0.5f * expected_output_delta;            // 0.00625

        // Verify hidden side unchanged (all zeros)
        double sum_abs_hw = 0.0;
        for (int i = 0; i < INPUT_SIZE; i++) {
            for (int j = 0; j < HIDDEN_SIZE; j++) {
                sum_abs_hw += std::fabs(g_hidden_weights[i][j]);
            }
        }
        double sum_abs_hb = 0.0;
        for (int j = 0; j < HIDDEN_SIZE; j++) sum_abs_hb += std::fabs(g_hidden_bias[j]);

        if (sum_abs_hw != 0.0 || sum_abs_hb != 0.0) {
            std::printf("FAIL: Hidden side should remain zero. sum|hidden_weights|=%g sum|hidden_bias|=%g\n", sum_abs_hw, sum_abs_hb);
            return 1;
        }

        // Verify output_bias updated uniformly
        float max_diff_ob = 0.0f;
        for (int i = 0; i < OUTPUT_SIZE; i++) {
            max_diff_ob = std::fmax(max_diff_ob, std::fabs(g_output_bias[i] - expected_output_bias));
        }
        if (max_diff_ob > tol) {
            std::printf("FAIL: output_bias mismatch. max_abs_diff=%g expected=%g\n", double(max_diff_ob), double(expected_output_bias));
            return 1;
        }

        // Verify output_weights updated uniformly
        float max_diff_ow = 0.0f;
        for (int i = 0; i < HIDDEN_SIZE; i++) {
            for (int j = 0; j < OUTPUT_SIZE; j++) {
                max_diff_ow = std::fmax(max_diff_ow, std::fabs(g_output_weights[i][j] - expected_output_weight));
            }
        }
        if (max_diff_ow > tol) {
            std::printf("FAIL: output_weights mismatch. max_abs_diff=%g expected=%g\n", double(max_diff_ow), double(expected_output_weight));
            return 1;
        }

        std::printf("PASS: Test 1. Sample checks: output_bias[0]=%g, output_weights[0][0]=%g\n",
                    double(g_output_bias[0]), double(g_output_weights[0][0]));
    }

    // Test 2: Deterministic non-zero initialization, check MSE decreases after one backprop step
    // - Initialize with small weights/biases/inputs
    // - Compute loss before and after calling backpropagation; expect non-increasing loss
    {
        std::puts("Test 2: Loss should not increase after a training step");
        init_deterministic_small();

        float output_before[OUTPUT_SIZE];
        forward_pass(g_input, g_hidden_weights, g_output_weights, g_hidden_bias, g_output_bias, output_before);
        float loss_before = mse_loss(g_target, output_before);

        const float lr = 0.01f;
        backpropagation(g_input, g_hidden_weights, g_output_weights, g_hidden_bias, g_output_bias, g_target, lr);

        float output_after[OUTPUT_SIZE];
        forward_pass(g_input, g_hidden_weights, g_output_weights, g_hidden_bias, g_output_bias, output_after);
        float loss_after = mse_loss(g_target, output_after);

        std::printf("Loss before: %g, Loss after: %g\n", double(loss_before), double(loss_after));

        // Allow tiny numerical jitter tolerance
        if (loss_after > loss_before * 1.001f + 1e-9f) {
            std::printf("FAIL: Loss did not decrease sufficiently.\n");
            return 1;
        } else {
            std::puts("PASS: Test 2.");
        }
    }

    // Test 3: If target equals current output, gradients should be zero and parameters unchanged
    {
        std::puts("Test 3: Zero update when target equals current output");
        init_deterministic_small();

        // Compute outputs and set target = outputs
        float current_output[OUTPUT_SIZE];
        forward_pass(g_input, g_hidden_weights, g_output_weights, g_hidden_bias, g_output_bias, current_output);
        for (int i = 0; i < OUTPUT_SIZE; i++) g_target[i] = current_output[i];

        // Backup parameters for comparison (flattened)
        float* hw_backup = new float[INPUT_SIZE * HIDDEN_SIZE];
        float* ow_backup = new float[HIDDEN_SIZE * OUTPUT_SIZE];
        float* hb_backup = new float[HIDDEN_SIZE];
        float* ob_backup = new float[OUTPUT_SIZE];

        // Copy backups
        for (int i = 0; i < INPUT_SIZE; i++) {
            for (int j = 0; j < HIDDEN_SIZE; j++) {
                hw_backup[i * HIDDEN_SIZE + j] = g_hidden_weights[i][j];
            }
        }
        for (int i = 0; i < HIDDEN_SIZE; i++) {
            for (int j = 0; j < OUTPUT_SIZE; j++) {
                ow_backup[i * OUTPUT_SIZE + j] = g_output_weights[i][j];
            }
        }
        for (int i = 0; i < HIDDEN_SIZE; i++) hb_backup[i] = g_hidden_bias[i];
        for (int i = 0; i < OUTPUT_SIZE; i++) ob_backup[i] = g_output_bias[i];

        // Apply backprop with any learning rate; expect no change
        const float lr = 0.1f;
        backpropagation(g_input, g_hidden_weights, g_output_weights, g_hidden_bias, g_output_bias, g_target, lr);

        // Compare differences
        float max_diff_hw = 0.0f;
        for (int i = 0; i < INPUT_SIZE; i++) {
            for (int j = 0; j < HIDDEN_SIZE; j++) {
                float d = std::fabs(g_hidden_weights[i][j] - hw_backup[i * HIDDEN_SIZE + j]);
                if (d > max_diff_hw) max_diff_hw = d;
            }
        }
        float max_diff_ow = 0.0f;
        for (int i = 0; i < HIDDEN_SIZE; i++) {
            for (int j = 0; j < OUTPUT_SIZE; j++) {
                float d = std::fabs(g_output_weights[i][j] - ow_backup[i * OUTPUT_SIZE + j]);
                if (d > max_diff_ow) max_diff_ow = d;
            }
        }
        float max_diff_hb = 0.0f;
        for (int i = 0; i < HIDDEN_SIZE; i++) {
            float d = std::fabs(g_hidden_bias[i] - hb_backup[i]);
            if (d > max_diff_hb) max_diff_hb = d;
        }
        float max_diff_ob = 0.0f;
        for (int i = 0; i < OUTPUT_SIZE; i++) {
            float d = std::fabs(g_output_bias[i] - ob_backup[i]);
            if (d > max_diff_ob) max_diff_ob = d;
        }

        delete[] hw_backup;
        delete[] ow_backup;
        delete[] hb_backup;
        delete[] ob_backup;

        if (max_diff_hw > 1e-7f || max_diff_ow > 1e-7f || max_diff_hb > 1e-7f || max_diff_ob > 1e-7f) {
            std::printf("FAIL: Parameters changed despite zero deltas. max diffs: HW=%g OW=%g HB=%g OB=%g\n",
                        double(max_diff_hw), double(max_diff_ow), double(max_diff_hb), double(max_diff_ob));
            return 1;
        } else {
            std::puts("PASS: Test 3.");
        }
    }

    std::puts("All tests passed.");
    return 0;
}