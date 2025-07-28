// fft2d_tb.cpp
#include <iostream>
#include <cmath>
#include <cassert>
#include <hls_stream.h>
#include <complex>
#define N 4096

typedef std::complex<float> cplx;
typedef hls::stream<cplx> cstream;
void fft2d(hls::stream<cplx>& inStr, hls::stream<cplx>& outStr) ;

int main() {
    constexpr int DIM = N;
    constexpr int SIZE = DIM * DIM;

    // Streams for input and output
    hls::stream<cplx> inStr;
    hls::stream<cplx> outStr;

    // 1) Prepare input: all ones (real=1, imag=0)
    for (int i = 0; i < SIZE; ++i) {
        inStr.write(cplx(1.0f, 0.0f));
    }

    // 2) Call the 2D FFT HLS kernel
    fft2d(inStr, outStr);

    // 3) Read and store output magnitudes
    std::vector<float> out_mag(SIZE);
    for (int i = 0; i < SIZE; ++i) {
        cplx tmp = outStr.read();
        out_mag[i] = tmp.real();  // extract the normalized magnitude
    }

    // 4) Expected: DC term first element = DIM, all others = 0
    const float tol = 1e-3f;
    for (int idx = 0; idx < SIZE; ++idx) {
        if (idx == 0) {
            // Should be N
            if (std::abs(out_mag[0] - float(DIM)) > tol) {
                std::cerr << "Mismatch at DC: got " << out_mag[0]
                          << ", expected " << DIM << std::endl;
                return 1;
            }
        } else {
            if (std::abs(out_mag[idx]) > tol) {
                std::cerr << "Non-zero at " << idx
                          << ": got " << out_mag[idx] << std::endl;
                return 1;
            }
        }
    }

    std::cout << "fft2d_hls uniform input test passed (DC="
              << out_mag[0] << ")" << std::endl;
    return 0;
}
