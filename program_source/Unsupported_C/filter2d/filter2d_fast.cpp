// file: fir2d_synth.cpp
#include <hls_stream.h>
#include <ap_int.h>

#define CHANNELS 4
#define TAPS     8

typedef ap_uint<16> data_t;

void fir2d(
    data_t in[CHANNELS],
    data_t coeffs[CHANNELS][TAPS],
    data_t out[CHANNELS]
) {
#pragma HLS INTERFACE bram port=coeffs         // Static BRAM storage :contentReference[oaicite:9]{index=9}
#pragma HLS ARRAY_PARTITION variable=coeffs complete dim=1
#pragma HLS PIPELINE II=1                      // II=1 for full throughput :contentReference[oaicite:10]{index=10}

    static data_t shift_reg[CHANNELS][TAPS];
#pragma HLS ARRAY_PARTITION variable=shift_reg complete dim=1

    // Shift and accumulate for each channel in parallel
CHANNEL_LOOP:
    for (int ch = 0; ch < CHANNELS; ch++) {
#pragma HLS UNROLL                       // Unroll channel loop :contentReference[oaicite:11]{index=11}
        // Update shift register
        for (int t = TAPS-1; t > 0; t--) {
            shift_reg[ch][t] = shift_reg[ch][t-1];
        }
        shift_reg[ch][0] = in[ch];

        // MAC
        ap_uint<32> acc = 0;
    TAP_LOOP:
        for (int t = 0; t < TAPS; t++) {
            acc += shift_reg[ch][t] * coeffs[ch][t];
        }
        out[ch] = acc.range(31,16);
    }
}
