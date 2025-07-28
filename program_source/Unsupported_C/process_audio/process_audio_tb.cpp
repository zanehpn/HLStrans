// audio_chain_tb.cpp
#include <iostream>
#include <cassert>
#include <vector>
#include <hls_stream.h>
#define N 1024
typedef enum { FX_GAIN, FX_THR, FX_CLIP } FXType;
void process_audio(hls::stream<float>& in, 
                       hls::stream<float>& out,
                       FXType fx1, float p1,
                       FXType fx2, float p2);
typedef hls::stream<float> Stream;

int main() {
    // 1) Prepare input stream and output stream
    static float in_buf[N];
    static float out_buf[N];
    Stream inStr, outStr;

    // 2) Generate test input: e.g., a ramp from -1.0 to 1.0
    for (int i = 0; i < N; ++i) {
        in_buf[i] = -1.0f + 2.0f * i / (N - 1);
        inStr.write(in_buf[i]);
    }

    // 3) Select effects and parameters
    FXType fx1 = FX_GAIN;
    float p1 = 0.5f;    // half gain
    FXType fx2 = FX_CLIP;
    float p2 = 0.0f;    // unused for clip

    // 4) Call DUT
    process_audio(inStr, outStr, fx1, p1, fx2, p2);

    // 5) Read output and verify
    for (int i = 0; i < N; ++i) {
        float v = outStr.read();
        out_buf[i] = v;
        // Compute expected: gain then clip
        float exp = in_buf[i] * p1;
        if (exp > 1.0f) exp = 1.0f;
        if (exp < -1.0f) exp = -1.0f;
        if (std::abs(v - exp) > 1e-6f) {
            std::cerr << "Mismatch at sample " << i
                      << ": got " << v << ", expected " << exp
                      << std::endl;
            return 1;
        }
    }

    std::cout << "process_audio test passed for FX_GAIN then FX_CLIP." << std::endl;

    // 6) Additional test: THR then GAIN
    // Reset streams
    while (!inStr.empty()) inStr.read();
    while (!outStr.empty()) outStr.read();
    for (int i = 0; i < N; ++i) inStr.write(in_buf[i]);

    fx1 = FX_THR; float thr_val = 0.2f;
    fx2 = FX_GAIN; float gain_val = 2.0f;
    process_audio(inStr, outStr, fx1, thr_val, fx2, gain_val);

    for (int i = 0; i < N; ++i) {
        float v = outStr.read();
        // expected: thr then gain
        float e = in_buf[i];
        if (e > thr_val) e = thr_val;
        if (e < -thr_val) e = -thr_val;
        e *= gain_val;
        if (std::abs(v - e) > 1e-6f) {
            std::cerr << "Mismatch (THR->GAIN) at sample " << i
                      << ": got " << v << ", expected " << e
                      << std::endl;
            return 1;
        }
    }
    std::cout << "process_audio test passed for FX_THR then FX_GAIN." << std::endl;

    return 0;
}
