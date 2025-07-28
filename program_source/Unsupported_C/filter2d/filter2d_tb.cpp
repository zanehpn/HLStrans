// file: fir2d_tb.cpp
#include <iostream>
#include <cstdlib>
#include <cmath>
#include <hls_stream.h>
#include <ap_int.h>

// Kernel prototype
void fir2d(
    ap_uint<16> in[4],
    ap_uint<16> coeffs[4][8],
    ap_uint<16> out[4]
);

// Reference FIR in plain C++
void fir2d_ref(
    ap_uint<16> in[4],
    ap_uint<16> coeffs[4][8],
    ap_uint<16> out_ref[4]
) {
    for (int ch = 0; ch < 4; ++ch) {
        // Static shift register buffer per channel
        static ap_uint<16> buf[4][8];
        // Shift right
        for (int t = 7; t > 0; --t) buf[ch][t] = buf[ch][t-1];
        buf[ch][0] = in[ch];

        // MAC
        uint32_t acc = 0;
        for (int t = 0; t < 8; ++t) {
            acc += buf[ch][t] * coeffs[ch][t];
        }
        // Truncate high half
        out_ref[ch] = static_cast<ap_uint<16>>(acc >> 16);
    }
}

int main() {
    constexpr int CHANNELS = 4, TAPS = 8;
    ap_uint<16> in[CHANNELS], out_hls[CHANNELS], out_ref[CHANNELS];
    ap_uint<16> coeffs[CHANNELS][TAPS];

    // 1) Initialize random seed
    std::srand(42);

    // 2) Fill coefficients randomly
    for (int ch = 0; ch < CHANNELS; ++ch)
        for (int t = 0; t < TAPS; ++t)
            coeffs[ch][t] = std::rand() & 0xFFFF;

    bool pass = true;
    // 3) Run multiple test vectors
    for (int iter = 0; iter < 1000; ++iter) {
        // Random inputs per channel
        for (int ch = 0; ch < CHANNELS; ++ch)
            in[ch] = std::rand() & 0xFFFF;

        // Call HLS kernel
        fir2d(in, coeffs, reinterpret_cast<ap_uint<16>*>(out_hls));

        // Compute reference
        fir2d_ref(in, *coeffs, out_ref);

        // Compare outputs
        for (int ch = 0; ch < CHANNELS; ++ch) {
            if (out_hls[ch] != out_ref[ch]) {
                std::cout << "Mismatch at iter " << iter
                          << " channel " << ch
                          << ": HLS=" << out_hls[ch]
                          << " REF=" << out_ref[ch] << "\n";
                pass = false;
                break;
            }
        }
        if (!pass) break;
    }

    // 4) Report
    if (pass) {
        std::cout << "TEST PASSED\n";
        return 0;
    } else {
        std::cout << "TEST FAILED\n";
        return 1;
    }
}
