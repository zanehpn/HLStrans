// contents of portfolio_optimization_tb.cpp
#include <iostream>
#include <iomanip>
#include <cmath>
#include <cassert>
#include <limits>

// Include the source to access the function and N definition directly.
#include "portfolio_optimization.cpp"

// Helper to compute sum of an array of length N
double sum_array(const double* arr) {
    double s = 0.0;
    for (int i = 0; i < N; ++i) {
        s += arr[i];
    }
    return s;
}

// Helper to compute portfolio return: sum_i w_i * r_i
double portfolio_return_calc(const double* weights, const double* returns) {
    double r = 0.0;
    for (int i = 0; i < N; ++i) {
        r += weights[i] * returns[i];
    }
    return r;
}

// Helper to check all weights are finite
bool all_finite(const double* arr) {
    for (int i = 0; i < N; ++i) {
        if (!std::isfinite(arr[i])) return false;
    }
    return true;
}

// Helper to print the first few elements of an array
void print_first_k(const char* name, const double* arr, int k = 8) {
    std::cout << name << " (first " << k << "): ";
    for (int i = 0; i < k; ++i) {
        std::cout << arr[i];
        if (i + 1 < k) std::cout << ", ";
    }
    std::cout << std::endl;
}

int main() {
    std::cout << std::fixed << std::setprecision(6);

    // Allocate arrays
    double returns_arr[N];
    double weights[N];
    double optimized_weights[N];

    // Allocate covariance matrix as a contiguous 2D array
    double (*cov)[N] = new double[N][N];

    // Tolerance for floating point comparisons
    const double tol_sum = 1e-6;
    const double tol_uniform = 1e-6;

    // -------------------------------
    // Test Case 1: Uniform returns, zero covariance
    // Expectation: With zero covariance and equal returns for all assets,
    // the optimized weights should remain uniform (each ~ 1/N) after normalization.
    // -------------------------------
    {
        const double uniform_return = 0.05;
        const double risk_free_rate = 0.01;
        const double target_return = -1e9; // Very low to force early break after first iteration

        // Initialize returns to a uniform value
        for (int i = 0; i < N; ++i) {
            returns_arr[i] = uniform_return;
        }

        // Initialize covariance matrix to zeros
        for (int i = 0; i < N; ++i) {
            for (int j = 0; j < N; ++j) {
                cov[i][j] = 0.0;
            }
        }

        // Call DUT
        portfolio_optimization(returns_arr, cov, weights, risk_free_rate, target_return, optimized_weights);

        // Validate sum of weights is approximately 1.0
        double s = sum_array(optimized_weights);
        std::cout << "[Test 1] Sum of weights: " << s << std::endl;
        assert(std::fabs(s - 1.0) < tol_sum);

        // Validate uniformity
        const double expected_uniform = 1.0 / static_cast<double>(N);
        double max_abs_diff = 0.0;
        for (int i = 0; i < N; ++i) {
            max_abs_diff = std::max(max_abs_diff, std::fabs(optimized_weights[i] - expected_uniform));
        }
        std::cout << "[Test 1] Max abs diff from uniform 1/N: " << max_abs_diff << std::endl;
        assert(max_abs_diff < tol_uniform);

        // Validate finiteness
        assert(all_finite(optimized_weights));

        // Compute and print portfolio return for visibility
        double pr = portfolio_return_calc(optimized_weights, returns_arr);
        std::cout << "[Test 1] Portfolio return: " << pr << std::endl;

        // Print a few weights
        print_first_k("[Test 1] Optimized weights", optimized_weights, 8);

        std::cout << "[Test 1] PASSED: Uniform returns with zero covariance -> uniform weights." << std::endl;
    }

    // -------------------------------
    // Test Case 2: Non-uniform returns, diagonal covariance
    // Expectation: Assets with higher returns get higher weights (after one iteration and normalization).
    // We keep covariance diagonal (same variance) to keep interactions simple.
    // -------------------------------
    {
        const double base_return = 0.010;     // Base expected return for most assets
        const double bonus_return = 0.050;    // Extra return for top assets
        const int boosted_assets = 10;        // Number of assets with higher return
        const double variance = 0.001;        // Diagonal covariance
        const double risk_free_rate = 0.000;  // Risk-free rate
        const double target_return = -1e9;    // Very low to break after first iteration

        // Initialize returns
        for (int i = 0; i < N; ++i) {
            returns_arr[i] = base_return;
        }
        for (int i = 0; i < boosted_assets && i < N; ++i) {
            returns_arr[i] = base_return + bonus_return; // Higher returns for first few assets
        }

        // Initialize covariance to zeros first
        for (int i = 0; i < N; ++i) {
            for (int j = 0; j < N; ++j) {
                cov[i][j] = 0.0;
            }
        }
        // Set diagonal elements to variance
        for (int i = 0; i < N; ++i) {
            cov[i][i] = variance;
        }

        // Call DUT
        portfolio_optimization(returns_arr, cov, weights, risk_free_rate, target_return, optimized_weights);

        // Validate sum of weights is approximately 1.0
        double s = sum_array(optimized_weights);
        std::cout << "[Test 2] Sum of weights: " << s << std::endl;
        assert(std::fabs(s - 1.0) < tol_sum);

        // Validate finiteness
        assert(all_finite(optimized_weights));

        // Check that an asset with higher return has a higher weight than a baseline asset
        int high_idx = 0;
        int low_idx = std::min(20, N - 1);
        std::cout << "[Test 2] Weight[high_idx=" << high_idx << "]=" << optimized_weights[high_idx]
                  << " vs Weight[low_idx=" << low_idx << "]=" << optimized_weights[low_idx] << std::endl;
        assert(optimized_weights[high_idx] > optimized_weights[low_idx]);

        // Compute and print portfolio return for visibility
        double pr = portfolio_return_calc(optimized_weights, returns_arr);
        std::cout << "[Test 2] Portfolio return: " << pr << std::endl;

        // Print a few weights to observe distribution
        print_first_k("[Test 2] Optimized weights (0..7)", optimized_weights, 8);
        std::cout << "[Test 2] PASSED: Higher-return assets have higher weights under diagonal covariance." << std::endl;
    }

    // Clean up
    delete[] cov;

    std::cout << "All tests completed successfully." << std::endl;
    return 0;
}