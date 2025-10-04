// contents of fxp_sqrt_top_tb.cpp
#include <iostream>
#include <iomanip>
#include <cmath>
#include <vector>
#include <string>

// Include the DUT source to access fxp_sqrt_top, fxp_sqrt, and typedefs.
#include "fxp_sqrt_top.cpp"

// Helper: absolute difference for doubles
static inline double absd(double x) { return x < 0 ? -x : x; }

// Test the top-level wrapper fxp_sqrt_top using in_data_t/out_data_t.
// The tolerance is specified in multiples of the output LSB.
bool test_top_case(double in_val_double, double kLSB_tol, const std::string& name) {
    const int OUT_FRAC = OUT_BW - OUT_IW;
    const double out_lsb = std::ldexp(1.0, -OUT_FRAC); // LSB of out_data_t

    in_data_t in_fx = in_val_double;   // construct fixed-point input from double
    out_data_t out_fx = fxp_sqrt_top(in_fx);

    double out = out_fx.to_double();
    double exp = std::sqrt(static_cast<double>(in_val_double));
    double err = absd(out - exp);
    bool pass = err <= (kLSB_tol * out_lsb);

    std::cout << std::setprecision(15);
    std::cout << "[TOP] " << name
              << " | in=" << in_val_double
              << " -> out=" << out
              << " | exp=" << exp
              << " | err=" << err
              << " | tol=" << (kLSB_tol * out_lsb)
              << " | " << (pass ? "PASS" : "FAIL") << "\n";
    return pass;
}

// Test the core template fxp_sqrt with arbitrary formats.
// W2/IW2: output width/integer width; W1/IW1: input width/integer width.
// Tolerance is in multiples of the output LSB.
template <int W2, int IW2, int W1, int IW1>
bool test_direct_case(double in_val_double, double kLSB_tol, const std::string& name) {
    const int OUT_FRAC = W2 - IW2;
    const double out_lsb = std::ldexp(1.0, -OUT_FRAC); // LSB of output format

    ap_ufixed<W1, IW1> in_fx = in_val_double;
    ap_ufixed<W2, IW2> out_fx;

    fxp_sqrt(out_fx, in_fx);

    double out = out_fx.to_double();
    double exp = std::sqrt(static_cast<double>(in_val_double));
    double err = absd(out - exp);
    bool pass = err <= (kLSB_tol * out_lsb);

    std::cout << std::setprecision(15);
    std::cout << "[DIR] " << name
              << " | in=" << in_val_double
              << " -> out=" << out
              << " | exp=" << exp
              << " | err=" << err
              << " | tol=" << (kLSB_tol * out_lsb)
              << " | " << (pass ? "PASS" : "FAIL") << "\n";
    return pass;
}

int main() {
    int fails = 0;

    // Compute some useful constants for test generation
    const double in_lsb = std::ldexp(1.0, -(IN_BW - IN_IW));                 // LSB of in_data_t
    const double in_max = std::ldexp(1.0, IN_IW) - std::ldexp(1.0, -(IN_BW - IN_IW)); // Max representable input

    // Tolerance in LSBs of the output format (allow some margin for rounding)
    const double kTolTop = 1.5;

    // Top-level tests exercising representative inputs

    // 1) Zero input -> sqrt(0) = 0
    fails += !test_top_case(0.0, kTolTop, "zero");

    // 2) Smallest positive representable (1 LSB)
    fails += !test_top_case(in_lsb, kTolTop, "min_positive_lsb");

    // 3) A few LSBs above zero
    fails += !test_top_case(16.0 * in_lsb, kTolTop, "small_fraction");

    // 4) Fractional perfect square: 0.25 -> 0.5
    fails += !test_top_case(0.25, kTolTop, "fractional_0p25");

    // 5) Unit input: 1.0 -> 1.0
    fails += !test_top_case(1.0, kTolTop, "one");

    // 6) Non-perfect square: 2.0
    fails += !test_top_case(2.0, kTolTop, "two");

    // 7) Perfect square integer: 9.0 -> 3.0
    fails += !test_top_case(9.0, kTolTop, "perfect_square_9");

    // 8) Mid-range non-integer: 10.5
    fails += !test_top_case(10.5, kTolTop, "midrange_10p5");

    // 9) Mid-range: 123.456
    fails += !test_top_case(123.456, kTolTop, "midrange_123p456");

    // 10) Near maximum representable input (just below 256 for IN_IW=8)
    fails += !test_top_case(in_max - 100.0 * in_lsb, kTolTop, "near_max_minus_100lsb");

    // 11) Maximum representable input
    fails += !test_top_case(in_max, kTolTop, "max_input");

    // 12) Very small (but representable) value to test behavior near zero
    fails += !test_top_case(3.0 * in_lsb, kTolTop, "tiny_3lsb");

    // Direct template tests (exercise core fxp_sqrt outside the wrapper)

    // A) Integer-style input (no fraction), fractional output:
    //    sqrt(65535) ~ 255.998; ensure algorithm handles wide integer inputs.
    fails += !test_direct_case<16, 8, 16, 16>(65535.0, 1.5, "direct_uint16_to_uq8p8_65535");

    // B) Perfect square integer: 144 -> 12 exactly (with fractional bits to observe exactness)
    fails += !test_direct_case<12, 6, 16, 16>(144.0, 1.0, "direct_uint16_to_uq6p6_144");

    // C) Fractional input/output with different formats
    //    Input: ap_ufixed<12,4> (8 fractional bits)
    //    Output: ap_ufixed<14,3> (11 fractional bits), should be very accurate
    fails += !test_direct_case<14, 3, 12, 4>(10.5, 1.5, "direct_uq3p11_from_uq4p8_10p5");

    // D) Another fractional case to test rounding at non-trivial boundary
    fails += !test_direct_case<20, 6, 18, 5>(3.14159265, 1.5, "direct_uq6p14_from_uq5p13_pi");

    std::cout << "\nTestbench complete. " << (fails == 0 ? "ALL TESTS PASSED" : "FAILURES DETECTED")
              << " (" << fails << " failed case(s)).\n";

    return (fails == 0) ? 0 : 1;
}