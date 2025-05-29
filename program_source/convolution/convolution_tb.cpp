// convolution_tb.cpp
#include "hls_stream.h"
#include <cassert>
#include <cstdlib>
#include <ctime>
#include <iostream>
#include <vector>

// Forward declaration of your HLS top‐level
void convolution(
    const char           coeffs[256],
    float                factor,
    short                bias,
    unsigned short       width,
    unsigned short       height,
    unsigned short       stride,
    const unsigned char  src[1920*1080],
    unsigned char        dst[1920*1080]
);

// --- in main(): only height*stride elements needed
//std::vector<unsigned char> dst_ref(stride * height);

// --- cpu_convolution, trimmed to avoid OOB
static void cpu_convolution(
    const char           coeffs[],
    int                   coeff_count,
    float                 factor,
    short                 bias,
    int                   width,
    int                   height,
    int                   stride,
    const unsigned char*  src,
    unsigned char*        dst_ref
) {
    const int F = 15;
    const int pad = F / 2;

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            int sum = 0;
            for (int ky = 0; ky < F; ky++) {
                for (int kx = 0; kx < F; kx++) {
                    int ix = x + kx - pad;
                    int iy = y + ky - pad;
                    unsigned char pix = 0;
                    if (ix >= 0 && ix < width && iy >= 0 && iy < height) {
                        pix = src[iy * stride + ix];
                    }
                    sum += pix * coeffs[ky * F + kx];
                }
            }
            int val = int(factor * sum) + bias;
            dst_ref[y * stride + x] = (unsigned char) ( val < 0 ? 0 : (val > 255 ? 255 : val) );
        }
        // zero out the end-of-line padding only
        for (int x2 = width; x2 < stride; x2++) {
            dst_ref[y * stride + x2] = 0;
        }
    }
    // **No** bottom-row zeroing here → prevents OOB writes
}

int main() {
    std::srand(std::time(nullptr));

    // Test parameters (smaller for quick simulation)
    const int width  = 64;
    const int height = 48;
    const int stride = ((width + 63)/64)*64;  // must be multiple of 64

    // Allocate buffers
    std::vector<unsigned char> src   (stride * height);
    std::vector<unsigned char> dst_hls(1920*1080);
    std::vector<unsigned char> dst_ref(stride * height);

    // Initialize source image with random data
    for (int i = 0; i < stride*height; i++) {
        src[i] = std::rand() & 0xFF;
    }

    // Prepare 15×15 filter coefficients in a C-array
    char coeffs[256];
    for (int i = 0; i < 15*15; i++) {
        coeffs[i] = (std::rand() % 21) - 10;  // values in [-10..10]
    }
    // zero the rest
    for (int i = 15*15; i < 256; i++) {
        coeffs[i] = 0;
    }

    float factor = 1.0f / (15*15);
    short bias   = 0;

    // Compute CPU reference
    cpu_convolution(coeffs, 15*15,
                    factor, bias,
                    width, height, stride,
                    src.data(), dst_ref.data());

    // Run HLS kernel
    convolution(coeffs, factor, bias,
                width, height, stride,
                src.data(), dst_hls.data());

    // Compare results in the valid region
    int errors = 0;
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            unsigned char v_hls = dst_hls[y*stride + x];
            unsigned char v_ref = dst_ref[y*stride + x];
            if (v_hls != v_ref) {
                if (errors < 10) {
                    std::cout << "Mismatch at (" << x << "," << y
                              << "): HLS=" << int(v_hls)
                              << " REF=" << int(v_ref) << "\n";
                }
                errors++;
            }
        }
    }

    if (errors == 0) {
        std::cout << "TEST PASSED: HLS output matches reference.\n";
        return 0;
    } else {
        std::cout << "TEST FAILED: " << errors << " mismatches found.\n";
        return 1;
    }
}
