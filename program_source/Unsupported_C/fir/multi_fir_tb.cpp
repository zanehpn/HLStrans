// multi_fir_tb.cpp
#include <cassert>
#include <iostream>
#include <vector>
#include <cstring>
#include <hls_stream.h>
#define MAX_C 8
#define MAX_L 32
#define MAX_N 1024

void multi_fir(
    hls::stream<float> in[MAX_C],
    int N,
    float coef[MAX_L],
    hls::stream<float> out[MAX_C]);

int main() {
    // 1) Prepare coefficient array (e.g., simple ramp for testing)
    static float coef[MAX_L];
    for (int j = 0; j < MAX_L; ++j) {
        coef[j] = float(j + 1);
    }

    // 2) Instantiate input and output streams
    static hls::stream<float> inStr[MAX_C];
    static hls::stream<float> outStr[MAX_C];

    // 3) Generate impulse on each channel and drive DUT
    //    Channel c receives a single '1' at sample 0, zeros thereafter.
    for (int c = 0; c < MAX_C; ++c) {
        for (int i = 0; i < MAX_N; ++i) {
            float sample = (i == 0) ? 1.0f : 0.0f;
            inStr[c].write(sample);
        }
    }

    // 4) Call the HLS FIR kernel
    multi_fir(inStr, MAX_N, coef, outStr);

    // 5) Read back outputs and verify
    //    For an impulse input, the first MAX_L outputs on each channel
    //    should equal coef[0..MAX_L-1], then zeros afterward.
    for (int c = 0; c < MAX_C; ++c) {
        for (int i = 0; i < MAX_N; ++i) {
            float outv = outStr[c].read();
            float expected = (i < MAX_L) ? coef[i] : 0.0f;
            if (std::abs(outv - expected) > 1e-6f) {
                std::cerr << "Channel " << c << ", sample " << i
                          << ": got " << outv
                          << ", expected " << expected << std::endl;
                return 1;
            }
        }
    }

    std::cout << "multi_fir test passed on all " << MAX_C
              << " channels." << std::endl;
    return 0;
}
