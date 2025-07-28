// file: cordic_tb.cpp
#include <iostream>
#include <random>
#include <cmath>
#include <hls_stream.h>
#include <ap_int.h>

// Bring in the HLS kernel declaration
void cordic(
    hls::stream<ap_int<16>>& in_x,
    hls::stream<ap_int<16>>& in_y,
    hls::stream<ap_int<16>>& in_theta,
    hls::stream<ap_int<16>>& out_x,
    hls::stream<ap_int<16>>& out_y
);

static const int ITER = 16;

// Reference C++ implementation of the same CORDIC loop
void cordic_ref(ap_int<16> x0, ap_int<16> y0, ap_int<16> z0,
                ap_int<16>& x_out, ap_int<16>& y_out) {
    ap_int<16> x = x0, y = y0, z = z0;
    ap_int<16> x_tmp, y_tmp;
    for (int i = 0; i < ITER; ++i) {
        ap_int<1> d = (z < 0) ? -1 : 1;
        x_tmp = x - (y >> i) * d;
        y_tmp = y + (x >> i) * d;
        z     = z - d * /*atan lookup*/ 0x0CCC;
        x = x_tmp;
        y = y_tmp;
    }
    x_out = x;
    y_out = y;
}

int main() {
    constexpr int TESTS = 1024;
    std::mt19937 rng(12345);
    std::uniform_int_distribution<int> dist16(-32768, 32767);

    hls::stream<ap_int<16>> in_x, in_y, in_theta;
    hls::stream<ap_int<16>> out_x, out_y;

    bool pass = true;

    for (int t = 0; t < TESTS; ++t) {
        // Generate random inputs
        ap_int<16> x0     = dist16(rng);
        ap_int<16> y0     = dist16(rng);
        ap_int<16> theta0 = dist16(rng);

        // Push into HLS streams
        in_x.write(x0);
        in_y.write(y0);
        in_theta.write(theta0);

        // Call the HLS kernel
        cordic(in_x, in_y, in_theta, out_x, out_y);

        // Read HLS outputs
        ap_int<16> x_hls = out_x.read();
        ap_int<16> y_hls = out_y.read();

        // Compute reference
        ap_int<16> x_ref, y_ref;
        cordic_ref(x0, y0, theta0, x_ref, y_ref);

        // Compare
        if (x_hls != x_ref || y_hls != y_ref) {
            std::cout << "Mismatch at test " << t << ":\n"
                      << "  input:  x=" << x0 << " y=" << y0
                      << " theta=" << theta0 << "\n"
                      << "  HLS out: x=" << x_hls << " y=" << y_hls << "\n"
                      << "  REF out: x=" << x_ref << " y=" << y_ref << "\n";
            pass = false;
            break;
        }
    }

    if (pass) {
        std::cout << "TEST PASSED\n";
        return 0;
    } else {
        std::cout << "TEST FAILED\n";
        return 1;
    }
}
