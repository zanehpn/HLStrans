#include <iostream>
#include <cmath>
#include "ap_int.h"
#include "hls_stream.h"

// Definitions from your design
const int DWIDTH_256 = 256;
#define INTERFACE_WIDTH_256 ap_uint<DWIDTH_256>
const int W_FACTOR_256 = DWIDTH_256/32;  // 8

const int DWIDTH_512 = 32;
#define INTERFACE_WIDTH_512 ap_uint<DWIDTH_512>
const int W_FACTOR_512 = DWIDTH_512/32;  // 1

#define TYPE float
const int NUM_ITERATIONS = 5000;
#define NUM_KERNEL (4)
#define N (8192)
#define L (1024)
#define N_OUT (N/NUM_KERNEL)      // 2048
#define ROWS_PER_TILE (64)
#define NUM_TILES (N_OUT/ROWS_PER_TILE)  // 2048/64 = 32
#define UNROLL_FACTOR (4)

// Declaration of spmv (assumed to be defined in the provided source)
extern "C" {
    void spmv(volatile INTERFACE_WIDTH_256* nzval, 
              volatile INTERFACE_WIDTH_256* cols, 
              INTERFACE_WIDTH_512* vec, 
              INTERFACE_WIDTH_512* out);
}

int main() {
    // Calculate sizes for the arrays:
    // Tile length = L * ROWS_PER_TILE / W_FACTOR_256
    const int tile_length = (L * ROWS_PER_TILE) / W_FACTOR_256;  // (1024*64)/8 = 8192
    // nzval and cols are used for NUM_TILES+1 tiles.
    const int nzval_size = (NUM_TILES + 1) * tile_length;  // 33 * 8192
    const int cols_size   = nzval_size;
    // vec: size = N / W_FACTOR_512 = 8192
    const int vec_size = N / W_FACTOR_512;  // 8192
    // out: size = N_OUT / W_FACTOR_512 = 2048
    const int out_size = N_OUT / W_FACTOR_512;  // 2048

    // Allocate the arrays
    INTERFACE_WIDTH_256* nzval = new INTERFACE_WIDTH_256[nzval_size];
    INTERFACE_WIDTH_256* cols  = new INTERFACE_WIDTH_256[cols_size];
    INTERFACE_WIDTH_512* vec   = new INTERFACE_WIDTH_512[vec_size];
    INTERFACE_WIDTH_512* out   = new INTERFACE_WIDTH_512[out_size];

    // Initialize nzval with the float value 1.0 in each 32-bit segment.
    float one = 1.0f;
    uint32_t one_bits = *((uint32_t*)(&one));
    // Construct a 256-bit word with eight copies of one_bits.
    INTERFACE_WIDTH_256 nzval_word = 0;
    for (int k = 0; k < W_FACTOR_256; k++) {
        nzval_word.range((k+1)*32 - 1, k*32) = one_bits;
    }
    // Fill nzval with nzval_word.
    for (int i = 0; i < nzval_size; i++) {
        nzval[i] = nzval_word;
    }

    // Initialize cols with zeros (each 32-bit segment set to 0).
    INTERFACE_WIDTH_256 zero_word = 0;
    for (int i = 0; i < cols_size; i++) {
        cols[i] = zero_word;
    }

    // Initialize vec with ones (each element is a 32-bit word representing float 1.0).
    for (int i = 0; i < vec_size; i++) {
        vec[i] = one_bits;
    }

    // (Optional) Initialize the out array to zero.
    for (int i = 0; i < out_size; i++) {
        out[i] = 0;
    }

    // Call the spmv function (the design under test)
    spmv(nzval, cols, vec, out);

    // Check the results.
    // Based on the algorithm: 
    // In ellpack, each output element is computed as the sum over L multiplications,
    // with each multiplication being 1*1, so each local output should be 1024.
    // Therefore, each final output should be 1024.0.
    int errors = 0;
    for (int i = 0; i < out_size; i++) {
        // Convert the 32-bit output to a float.
        uint32_t out_word = out[i].to_uint();
        float out_val = *((float*)(&out_word));
        if (std::fabs(out_val - 1024.0f) > 1e-3) {
            errors++;
            std::cout << "Mismatch at index " << i << ": " << out_val << " != 1024.0" << std::endl;
        }
    }
    
    if (errors == 0) {
        std::cout << "Pass" << std::endl;
    } else {
        std::cout << "Fail: " << errors << " mismatches detected." << std::endl;
    }

    // Free allocated memory
    delete[] nzval;
    delete[] cols;
    delete[] vec;
    delete[] out;

    return (errors == 0) ? 0 : 1;
}
