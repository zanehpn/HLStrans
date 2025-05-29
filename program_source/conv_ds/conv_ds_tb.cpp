#include <iostream>
#include <cstdlib>
#include <cmath>
#include <cstring>
#include "conv_ds.h"

int main() {
    // Compute overall feature-map sizes
    const int IN_FM_DEPTH = IN_BUF_DEPTH * N_TILE_LAYERS;
    const int IN_FM_HEIGHT = 2 * BUF_HEIGHT * N_TILE_ROWS;
    const int IN_FM_WIDTH = 2 * BUF_WIDTH * N_TILE_COLS;
    const int OUT_FM_DEPTH = OUT_BUF_DEPTH * KERNEL_GROUPS;
    const int OUT_FM_HEIGHT = IN_FM_HEIGHT / 2;
    const int OUT_FM_WIDTH = IN_FM_WIDTH / 2;

    // Allocate host buffers
    fm_t *in_feature_map  = new fm_t[IN_FM_DEPTH * IN_FM_HEIGHT * IN_FM_WIDTH];
    fm_t *out_feature_map = new fm_t[OUT_FM_DEPTH * OUT_FM_HEIGHT * OUT_FM_WIDTH];
    fm_t *golden_out      = new fm_t[OUT_FM_DEPTH * OUT_FM_HEIGHT * OUT_FM_WIDTH];
    wt_t *layer_weights   = new wt_t[OUT_FM_DEPTH * IN_FM_DEPTH];
    wt_t *layer_bias      = new wt_t[OUT_FM_DEPTH];

    // Initialize inputs and parameters with deterministic pseudo-random values
    std::srand(42);
    for (int i = 0; i < IN_FM_DEPTH * IN_FM_HEIGHT * IN_FM_WIDTH; i++) {
        in_feature_map[i] = (fm_t)(std::rand() % 8 - 4) / (fm_t)(4.0f);
    }
    for (int f = 0; f < OUT_FM_DEPTH; f++) {
        layer_bias[f] = (wt_t)((std::rand() % 6 - 3) / 4.0f);
        for (int c = 0; c < IN_FM_DEPTH; c++) {
            layer_weights[f*IN_FM_DEPTH + c] = (wt_t)((std::rand() % 6 - 3) / (fm_t)(4.0f));
        }
    }

    // Compute golden output: 1x1 convolution with bias and stride-2 downsampling
    for (int f = 0; f < OUT_FM_DEPTH; f++) {
        for (int th = 0; th < OUT_FM_HEIGHT; th++) {
            for (int tw = 0; tw < OUT_FM_WIDTH; tw++) {
                float acc = (float)layer_bias[f];
                for (int c = 0; c < IN_FM_DEPTH; c++) {
                    int ih = th * 2;
                    int iw = tw * 2;
                    int idx_in = c * (IN_FM_HEIGHT*IN_FM_WIDTH) + ih * IN_FM_WIDTH + iw;
                    acc += (float)in_feature_map[idx_in] * (float)layer_weights[f*IN_FM_DEPTH + c];
                }
                int idx_out = f * (OUT_FM_HEIGHT*OUT_FM_WIDTH) + th * OUT_FM_WIDTH + tw;
                golden_out[idx_out] = (fm_t)acc;
            }
        }
    }

    // Zero-out DUT output
    std::memset(out_feature_map, 0, sizeof(fm_t) * OUT_FM_DEPTH * OUT_FM_HEIGHT * OUT_FM_WIDTH);

    // Call the design under test
    conv_ds(out_feature_map, in_feature_map, layer_weights, layer_bias);

    // Compare results
    const float eps = 1e-3f;
    bool pass = true;
    for (int i = 0; i < OUT_FM_DEPTH * OUT_FM_HEIGHT * OUT_FM_WIDTH; i++) {
        if (std::fabs((float)out_feature_map[i] - (float)golden_out[i]) > eps) {
            std::cout << "Mismatch at index " << i
                      << ": expected " << (float)golden_out[i]
                      << ", got " << (float)out_feature_map[i] << std::endl;
            pass = false;
        }
    }

    if (pass) std::cout << "Test pass" << std::endl;
    else      std::cout << "Test fail" << std::endl;

    // Cleanup
    delete[] in_feature_map;
    delete[] out_feature_map;
    delete[] golden_out;
    delete[] layer_weights;
    delete[] layer_bias;

    return pass ? 0 : 1;
}
