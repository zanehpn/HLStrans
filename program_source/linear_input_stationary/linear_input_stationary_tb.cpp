#include <iostream>
#include <array>
#include <cmath>
#include <hls_stream.h>
#include "linear_input_stationary.h"

// Must match kernel definitions:
typedef float FM_TYPE;
typedef float WT_TYPE;
#define DIM_IN   32
#define DIM_OUT  16
#define PARALLEL 4
#define RELU     1

// Epsilon for floating‑point comparisons
static const float EPS = 1e-5f;

// Reference CPU implementation
void linear_reference(
    const std::array<FM_TYPE, PARALLEL> input_slices[DIM_IN / PARALLEL],
    const WT_TYPE weight[DIM_OUT][DIM_IN],
    const WT_TYPE bias[DIM_OUT],
    FM_TYPE        ref_out[DIM_OUT]
) {
    // Initialize with bias
    for (int o = 0; o < DIM_OUT; o++) {
        ref_out[o] = bias[o];
    }
    // Accumulate
    for (int slice = 0; slice < DIM_IN / PARALLEL; slice++) {
        for (int o = 0; o < DIM_OUT; o++) {
            FM_TYPE sum = 0;
            for (int i = 0; i < PARALLEL; i++) {
                int idx = slice * PARALLEL + i;
                sum += input_slices[slice][i] * weight[o][idx];
            }
            ref_out[o] += sum;
        }
    }
    // ReLU
    if (RELU) {
        for (int o = 0; o < DIM_OUT; o++) {
            if (ref_out[o] < 0) ref_out[o] = 0;
        }
    }
}

int main() {
    // 1) Prepare inputs
    hls::stream<std::array<FM_TYPE,PARALLEL>> input_stream;
    std::array<FM_TYPE, PARALLEL> cpu_slices[DIM_IN / PARALLEL];

    WT_TYPE weight[DIM_OUT][DIM_IN];
    WT_TYPE bias[DIM_OUT];
    FM_TYPE output[DIM_OUT];
    FM_TYPE reference[DIM_OUT];

    // Initialize weight = 1.0, bias = 0.5
    for (int o = 0; o < DIM_OUT; o++) {
        bias[o] = 0.5f;
        for (int i = 0; i < DIM_IN; i++) {
            weight[o][i] = 1.0f;
        }
    }

    // Fill stream with slices [0,1,2,3], [4,5,6,7], ...
    for (int slice = 0; slice < DIM_IN / PARALLEL; slice++) {
        std::array<FM_TYPE,PARALLEL> arr;
        for (int i = 0; i < PARALLEL; i++) {
            arr[i] = static_cast<FM_TYPE>(slice*PARALLEL + i);
        }
        input_stream.write(arr);
        cpu_slices[slice] = arr;
    }

    // 2) Call HLS kernel
    linear_input_stationary(input_stream, weight, bias, output);

    // 3) Compute reference
    linear_reference(cpu_slices, weight, bias, reference);

    // 4) Compare and report
    bool pass = true;
    for (int o = 0; o < DIM_OUT; o++) {
        if (std::fabs(output[o] - reference[o]) > EPS) {
            std::cout << "Mismatch at o=" << o
                      << " : kernel=" << output[o]
                      << " ref=" << reference[o] << "\n";
            pass = false;
        }
    }

    if (pass) {
        std::cout << "PASS\n";
    } else {
        std::cout << "FAIL\n";
    }

    return pass ? 0 : 1;
}
