// contents of fft_top_tb.cpp
#include <iostream>
#include <iomanip>
#include <cmath>
#include <vector>

// Include the DUT source directly to make this testbench standalone.
#include "fft_top.cpp"

// Helper to compute magnitude of complex ap_fixed output
static double magOut(const cmpxDataOut &v) {
    double re = static_cast<double>(v.real());
    double im = static_cast<double>(v.imag());
    return std::sqrt(re * re + im * im);
}

// Helper to compute magnitude of complex ap_fixed input
static double magIn(const cmpxDataIn &v) {
    double re = static_cast<double>(v.real());
    double im = static_cast<double>(v.imag());
    return std::sqrt(re * re + im * im);
}

// Fill helpers
static void fill_zero(cmpxDataIn *buf, int n) {
    for (int i = 0; i < n; ++i) {
        buf[i] = cmpxDataIn(data_in_t(0.0), data_in_t(0.0));
    }
}
static void fill_impulse(cmpxDataIn *buf, int n, int idx, double amp) {
    for (int i = 0; i < n; ++i) {
        double val = (i == idx) ? amp : 0.0;
        buf[i] = cmpxDataIn(data_in_t(val), data_in_t(0.0));
    }
}
static void fill_constant(cmpxDataIn *buf, int n, double amp) {
    for (int i = 0; i < n; ++i) {
        buf[i] = cmpxDataIn(data_in_t(amp), data_in_t(0.0));
    }
}

int main() {
    using std::cout;
    using std::endl;

    const int N = FFT_LENGTH;
    const int PRINT_COUNT = 16;
    const double TOL = 1e-3;  // tolerance for tests

    cout << "FFT Testbench starting (N = " << N << ")" << endl;
    cout << std::fixed << std::setprecision(6);

    // Allocate buffers
    std::vector<cmpxDataIn> in(N);
    std::vector<cmpxDataOut> out(N);

    bool ovflo = false;

    // Test 1: inputdatamover copies data correctly and sets config
    // Prepare a ramp-like input pattern within safe fixed-point range
    {
        cout << "\nTest 1: inputdatamover copy check" << endl;
        config_t cfg;
        std::vector<cmpxDataIn> tmp(N);

        for (int i = 0; i < N; ++i) {
            // value in range [-1,1): use (i % 256) / 512.0 to stay small
            double val = (i % 256) / 512.0;
            in[i] = cmpxDataIn(data_in_t(val), data_in_t(-val / 2));
        }

        // Direction 'true' just for exercising API; it sets FFT direction inside cfg
        inputdatamover(true, &cfg, in.data(), tmp.data());

        // Verify copy
        int mismatches = 0;
        for (int i = 0; i < N; ++i) {
            double re_diff = std::abs(static_cast<double>(in[i].real()) - static_cast<double>(tmp[i].real()));
            double im_diff = std::abs(static_cast<double>(in[i].imag()) - static_cast<double>(tmp[i].imag()));
            if (re_diff > 1e-12 || im_diff > 1e-12) mismatches++;
        }
        cout << "inputdatamover copy mismatches: " << mismatches << (mismatches == 0 ? " (PASS)" : " (FAIL)") << endl;
    }

    // Test 2: Forward FFT on an impulse signal
    // Expected behavior: All frequency bins should be approximately equal (constant magnitude/phase)
    {
        cout << "\nTest 2: Forward FFT of impulse at index 0" << endl;
        fill_impulse(in.data(), N, 0, 0.5); // use 0.5 to avoid potential saturation
        ovflo = false;

        fft_top(true, in.data(), out.data(), &ovflo);

        cout << "Overflow flag: " << (ovflo ? "true" : "false") << endl;

        // Print first few bins
        for (int k = 0; k < PRINT_COUNT; ++k) {
            cout << "X[" << k << "] = (" << static_cast<double>(out[k].real())
                 << ", " << static_cast<double>(out[k].imag()) << "), |X|=" << magOut(out[k]) << endl;
        }

        // Check uniformity across all bins compared to bin 0
        double ref_re = static_cast<double>(out[0].real());
        double ref_im = static_cast<double>(out[0].imag());
        int non_uniform = 0;
        for (int k = 1; k < N; ++k) {
            double re_diff = std::abs(static_cast<double>(out[k].real()) - ref_re);
            double im_diff = std::abs(static_cast<double>(out[k].imag()) - ref_im);
            if (re_diff > TOL || im_diff > TOL) {
                non_uniform++;
            }
        }
        cout << "Non-uniform bins (vs bin 0): " << non_uniform << (non_uniform == 0 ? " (PASS)" : " (WARN)") << endl;
    }

    // Test 3: Forward FFT on a constant signal
    // Expected behavior: DC bin (k=0) carries most/all energy; other bins near zero.
    {
        cout << "\nTest 3: Forward FFT of constant 0.5 signal" << endl;
        fill_constant(in.data(), N, 0.5);
        ovflo = false;

        fft_top(true, in.data(), out.data(), &ovflo);

        cout << "Overflow flag: " << (ovflo ? "true" : "false") << endl;

        // Print first few bins
        for (int k = 0; k < PRINT_COUNT; ++k) {
            cout << "X[" << k << "] = (" << static_cast<double>(out[k].real())
                 << ", " << static_cast<double>(out[k].imag()) << "), |X|=" << magOut(out[k]) << endl;
        }

        // Check that non-DC bins are approximately zero
        double max_mag_non_dc = 0.0;
        for (int k = 1; k < N; ++k) {
            double m = magOut(out[k]);
            if (m > max_mag_non_dc) max_mag_non_dc = m;
        }
        cout << "Max magnitude among non-DC bins: " << max_mag_non_dc
             << (max_mag_non_dc <= 1e-2 ? " (PASS)" : " (WARN)") << endl;
    }

    // Test 4: Inverse FFT (direction=false) on a flat spectrum
    // Expected behavior: Time domain result is an impulse-like signal (most energy at a single sample).
    {
        cout << "\nTest 4: Inverse FFT of flat spectrum (all bins = 0.5)" << endl;
        // Build flat spectrum in 'in' (FFT expects the same type for input regardless of direction)
        fill_constant(in.data(), N, 0.5);
        ovflo = false;

        fft_top(false, in.data(), out.data(), &ovflo);

        cout << "Overflow flag: " << (ovflo ? "true" : "false") << endl;

        // Print first few samples of the time-domain result
        for (int n = 0; n < PRINT_COUNT; ++n) {
            cout << "x[" << n << "] = (" << static_cast<double>(out[n].real())
                 << ", " << static_cast<double>(out[n].imag()) << "), |x|=" << magOut(out[n]) << endl;
        }

        // Check that the first sample has significantly larger magnitude than others
        double m0 = magOut(out[0]);
        double max_other = 0.0;
        for (int n = 1; n < N; ++n) {
            double m = magOut(out[n]);
            if (m > max_other) max_other = m;
        }
        cout << "Impulse check: |x[0]|=" << m0 << ", max{|x[n]|, n>0}=" << max_other
             << ((max_other <= m0 * 0.1) ? " (PASS)" : " (WARN)") << endl;
    }

    cout << "\nFFT Testbench completed." << endl;
    return 0;
}