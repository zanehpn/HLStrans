// contents of kalman_filter_tb.cpp

#include <iostream>
#include <cmath>
#include <cassert>

// Include the source to make this testbench standalone
#include "kalman_filter.cpp"

// Helper to print a few samples from arrays
void print_samples(const float* arr, const char* name, int n = N) {
    std::cout << name << " samples:\n";
    for (int i = 0; i < 5; ++i) {
        std::cout << "  " << name << "[" << i << "] = " << arr[i] << "\n";
    }
    std::cout << "  ...\n";
    for (int i = n - 5; i < n; ++i) {
        std::cout << "  " << name << "[" << i << "] = " << arr[i] << "\n";
    }
}

// Deterministic pseudo-noise for tests
inline float noise_fn(int k, float amplitude) {
    return amplitude * std::sin(0.1f * static_cast<float>(k));
}

int main() {
    // Common arrays used in tests
    float z[N];
    float x[N];
    float P[N];

    // Test Case 1: Constant state, H=1 (identity measurement), A=1 (constant model)
    // Expectation: The filter should converge to the true state ~1.0 with small covariance.
    {
        std::cout << "Test Case 1: Constant state, A=1, H=1\n";
        const float true_state = 1.0f;
        const float A = 1.0f;
        const float H = 1.0f;
        const float Q = 1e-4f;  // small process noise
        const float R = 1e-2f;  // moderate measurement noise
        const float x0 = 0.0f;  // initial guess far from true state
        const float P0 = 1.0f;  // initial uncertainty

        for (int k = 0; k < N; ++k) {
            z[k] = H * true_state + noise_fn(k, 0.05f);  // deterministic noise
        }

        kalman_filter(z, x, P, A, H, Q, R, x0, P0);

        print_samples(x, "x");
        print_samples(P, "P");

        // Assert final estimate is close to true_state
        float err = std::fabs(x[N - 1] - true_state);
        std::cout << "  Final x[N-1] = " << x[N - 1] << ", error = " << err << "\n";
        assert(err < 0.1f);

        // Assert covariance decreased from initial
        std::cout << "  Final P[N-1] = " << P[N - 1] << ", initial P0 = " << P0 << "\n";
        assert(P[N - 1] < P0);

        // Assert covariance is non-negative
        for (int k = 0; k < N; ++k) {
            assert(P[k] >= 0.0f);
        }
        std::cout << "Test Case 1 PASSED\n\n";
    }

    // Test Case 2: Measurement scaling H=2, A=1, constant true state
    // Expectation: Filter correctly handles measurement scaling, converging near true state ~2.0.
    {
        std::cout << "Test Case 2: Constant state, A=1, H=2\n";
        const float true_state = 2.0f;
        const float A = 1.0f;
        const float H = 2.0f;   // measurement is twice the state
        const float Q = 5e-4f;  // small process noise
        const float R = 2e-2f;  // measurement noise covariance
        const float x0 = 0.0f;
        const float P0 = 1.0f;

        for (int k = 0; k < N; ++k) {
            z[k] = H * true_state + noise_fn(k, 0.05f);
        }

        kalman_filter(z, x, P, A, H, Q, R, x0, P0);

        print_samples(x, "x");
        print_samples(P, "P");

        float err = std::fabs(x[N - 1] - true_state);
        std::cout << "  Final x[N-1] = " << x[N - 1] << ", error = " << err << "\n";
        assert(err < 0.15f);

        std::cout << "  Final P[N-1] = " << P[N - 1] << "\n";
        for (int k = 0; k < N; ++k) {
            assert(P[k] >= 0.0f);
        }
        std::cout << "Test Case 2 PASSED\n\n";
    }

    // Test Case 3: Decaying system A=0.9, H=1
    // True state decays exponentially from 5.0 to ~0. Expectation: Filter tracks the decay and ends near 0.
    {
        std::cout << "Test Case 3: Decaying state, A=0.9, H=1\n";
        const float A = 0.9f;
        const float H = 1.0f;
        const float Q = 1e-5f;  // very small process noise
        const float R = 1e-2f;  // measurement noise covariance
        const float x0 = 0.0f;
        const float P0 = 1.0f;

        float true_x = 5.0f;
        // Generate measurements from the decaying true state plus noise
        for (int k = 0; k < N; ++k) {
            if (k > 0) true_x *= A;
            z[k] = H * true_x + noise_fn(k, 0.02f);
        }

        kalman_filter(z, x, P, A, H, Q, R, x0, P0);

        print_samples(x, "x");
        print_samples(P, "P");

        float final_est = x[N - 1];
        std::cout << "  Final x[N-1] = " << final_est << "\n";
        // As true_x decays to near 0, expect final estimate close to 0
        assert(std::fabs(final_est) < 0.1f);

        // Ensure covariance remains sane
        for (int k = 0; k < N; ++k) {
            assert(P[k] >= 0.0f);
        }
        std::cout << "Test Case 3 PASSED\n\n";
    }

    std::cout << "All tests passed.\n";
    return 0;
}