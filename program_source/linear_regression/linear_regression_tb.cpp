// contents of linear_regression_tb.cpp
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <random>
#include <cstring>
#include <iostream>
#include <limits>
#include <vector>
#include <string>
#include <algorithm>

#define N 1024

// Declare the DUT (Device Under Test) function from linear_regression.cpp.
// Link this testbench with linear_regression.cpp when compiling.
extern void linear_regression(float X[N], float Y[N], float &slope, float &intercept);

// Helper for approximate comparison
static bool approx_equal(float a, float b, float tol) {
    return std::fabs(a - b) <= tol;
}

struct TestResult {
    int passed = 0;
    int failed = 0;
};

static void print_result(const char* test_name, bool ok) {
    std::printf("[%s] %s\n", ok ? "PASS" : "FAIL", test_name);
}

// Runs linear regression and checks slope/intercept against expected values with tolerances
static void run_check_test(const char* name, float X[N], float Y[N],
                           float expected_slope, float expected_intercept,
                           float slope_tol, float intercept_tol, TestResult& tr) {
    float m = std::numeric_limits<float>::quiet_NaN();
    float c = std::numeric_limits<float>::quiet_NaN();
    linear_regression(X, Y, m, c);

    bool ok_slope = approx_equal(m, expected_slope, slope_tol);
    bool ok_intercept = approx_equal(c, expected_intercept, intercept_tol);
    bool ok = ok_slope && ok_intercept;

    std::printf("Test: %s\n", name);
    std::printf("  Expected slope     = %.6f, got = %.6f (tol=%.6f)\n", expected_slope, m, slope_tol);
    std::printf("  Expected intercept = %.6f, got = %.6f (tol=%.6f)\n", expected_intercept, c, intercept_tol);

    print_result(name, ok);
    if (ok) tr.passed++; else tr.failed++;
}

// Runs linear regression and checks that results are NaN (for degenerate cases)
static void run_nan_test(const char* name, float X[N], float Y[N], TestResult& tr) {
    float m = 0.0f, c = 0.0f;
    linear_regression(X, Y, m, c);

    bool slope_nan = std::isnan(m);
    bool intercept_nan = std::isnan(c);
    bool ok = slope_nan && intercept_nan;

    std::printf("Test: %s\n", name);
    std::printf("  Expected slope     = NaN, got = %s\n", slope_nan ? "NaN" : "finite");
    std::printf("  Expected intercept = NaN, got = %s\n", intercept_nan ? "NaN" : "finite");

    print_result(name, ok);
    if (ok) tr.passed++; else tr.failed++;
}

int main() {
    TestResult tr;

    // Test 1: Perfect positive linear relationship Y = aX + b
    {
        float X[N], Y[N];
        const float a = 2.5f;
        const float b = -1.2f;
        for (int i = 0; i < N; ++i) {
            X[i] = static_cast<float>(i);
            Y[i] = a * X[i] + b;
        }
        // Expect exact parameters (within small tolerance due to float precision)
        run_check_test("Perfect line: a=2.5, b=-1.2", X, Y, a, b, 1e-4f, 1e-4f, tr);
    }

    // Test 2: Constant Y (zero slope), Y = c0
    {
        float X[N], Y[N];
        const float c0 = 7.5f;
        for (int i = 0; i < N; ++i) {
            X[i] = static_cast<float>(i);
            Y[i] = c0;
        }
        // Expect slope ~ 0, intercept ~ c0
        run_check_test("Constant Y: slope=0, intercept=7.5", X, Y, 0.0f, c0, 1e-6f, 1e-4f, tr);
    }

    // Test 3: Perfect negative linear relationship Y = aX + b with a negative
    {
        float X[N], Y[N];
        const float a = -3.0f;
        const float b = 10.0f;
        for (int i = 0; i < N; ++i) {
            X[i] = static_cast<float>(i);
            Y[i] = a * X[i] + b;
        }
        run_check_test("Perfect line: a=-3.0, b=10.0", X, Y, a, b, 1e-4f, 1e-4f, tr);
    }

    // Test 4: Noisy linear relationship Y = aX + b + noise, uniform noise in [-0.5, 0.5]
    {
        float X[N], Y[N];
        const float a = 1.75f;
        const float b = 4.2f;
        std::mt19937 rng(12345);
        std::uniform_real_distribution<float> dist(-0.5f, 0.5f);
        for (int i = 0; i < N; ++i) {
            X[i] = static_cast<float>(i);
            Y[i] = a * X[i] + b + dist(rng);
        }
        // With N=1024 and moderate noise, slope should be very close to 'a', intercept close to 'b'
        run_check_test("Noisy line: a=1.75, b=4.2, noise +-0.5", X, Y, a, b, 0.03f, 0.2f, tr);
    }

    // Test 5: Degenerate case - all X equal (variance in X = 0) -> expect NaN results
    {
        float X[N], Y[N];
        for (int i = 0; i < N; ++i) {
            X[i] = 42.0f;
            Y[i] = static_cast<float>(i); // arbitrary Y
        }
        run_nan_test("Degenerate: all X equal -> slope/intercept NaN", X, Y, tr);
    }

    // Test 6: Large values in X to probe numerical stability
    {
        float X[N], Y[N];
        const float a = 0.001f;
        const float b = -1000.0f;
        for (int i = 0; i < N; ++i) {
            X[i] = 1.0e6f + static_cast<float>(i);
            Y[i] = a * X[i] + b;
        }
        // Allow looser tolerance for intercept due to large meanX multiplication and float precision
        run_check_test("Large X values: a=0.001, b=-1000", X, Y, a, b, 1e-4f, 2.0f, tr);
    }

    std::printf("\nSummary: %d passed, %d failed\n", tr.passed, tr.failed);
    if (tr.failed > 0) {
        std::printf("Some tests FAILED.\n");
        return 1;
    } else {
        std::printf("All tests PASSED.\n");
        return 0;
    }
}