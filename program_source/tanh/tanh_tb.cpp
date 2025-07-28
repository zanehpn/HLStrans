/*
 * Testbench for HLS tanh implementation
 * - Initializes an input feature map with known values
 * - Calls the HLS tanh() function
 * - Verifies output[c][h][w] == std::tanhf(input[c][h][w]) within a small epsilon
 * - Prints "Test pass" on success, or reports first mismatch and "Test fail" otherwise
 */

 #include <iostream>
 #include <math.h>
 #include <cstdlib>
 #include "tanh.h"
 
 int main() {
     data_t input[C][H][W];
     data_t output[C][H][W];
 
     // Epsilon for comparison
     const float eps = 1e-3f;
 
     // Initialize inputs with a test pattern: value = (c + h + w) * 0.1f
     for (int c = 0; c < C; ++c) {
         for (int h = 0; h < H; ++h) {
             for (int w = 0; w < W; ++w) {
                 float v = ((c + h + w) % 10) * 0.1f - 0.5f; // range [-0.5, 0.4]
                 input[c][h][w] = (data_t)v;
             }
         }
     }
 
     // Call DUT
     tanh(input, output);
 
     // Verify against reference tanhf
     for (int c = 0; c < C; ++c) {
         for (int h = 0; h < H; ++h) {
             for (int w = 0; w < W; ++w) {
                 float ref = std::tanh((float)input[c][h][w]);
                 float got = (float)output[c][h][w];
                 if (std::fabs(ref - got) > eps) {
                     std::cerr << "Mismatch at [" << c << "," << h << "," << w << "]: "
                               << got << " (got) vs " << ref << " (ref)\n";
                     std::cout << "Test fail\n";
                     return 1;
                 }
             }
         }
     }
 
     std::cout << "Test pass\n";
     return 0;
 }
 