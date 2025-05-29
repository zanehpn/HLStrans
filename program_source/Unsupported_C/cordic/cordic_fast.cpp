// file: cordic_synth.cpp
#include <hls_stream.h>
#include <ap_int.h>
#define ITER 16

// Top‑level CORDIC rotation kernel
void cordic(
    hls::stream<ap_int<16>>& in_x,
    hls::stream<ap_int<16>>& in_y,
    hls::stream<ap_int<16>>& in_theta,
    hls::stream<ap_int<16>>& out_x,
    hls::stream<ap_int<16>>& out_y
) {
#pragma HLS INTERFACE axis port=in_x     // AXI‑Stream inputs :contentReference[oaicite:1]{index=1}
#pragma HLS INTERFACE axis port=in_y
#pragma HLS INTERFACE axis port=in_theta
#pragma HLS INTERFACE axis port=out_x    // AXI‑Stream outputs :contentReference[oaicite:2]{index=2}
#pragma HLS INTERFACE axis port=out_y
#pragma HLS DATAFLOW                       // Fully pipelined dataflow :contentReference[oaicite:3]{index=3}

    ap_int<16> x = in_x.read();
    ap_int<16> y = in_y.read();
    ap_int<16> z = in_theta.read();

    ap_int<16> x_temp, y_temp;
CORDIC_LOOP:
    for (int i = 0; i < ITER; ++i) {
#pragma HLS PIPELINE II=1             // II=1 → one iteration per cycle :contentReference[oaicite:4]{index=4}
        ap_int<1> d = z < 0 ? -1 : 1;
        x_temp = x - (y >> i) * d;
        y_temp = y + (x >> i) * d;
        z      = z - d * /*atan lookup*/ 0x0CCC;  // placeholder constant
        x = x_temp;
        y = y_temp;
    }

    out_x.write(x);
    out_y.write(y);
}
