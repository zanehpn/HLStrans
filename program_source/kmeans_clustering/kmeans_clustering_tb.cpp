// contents of kmeans_clustering_tb.cpp
#include <iostream>
#include <cassert>
#include <cmath>

// Include the DUT source to access kmeans_clustering and constants
#include "kmeans_clustering.cpp"

// Helper to compare floats with tolerance
inline bool approx_equal(float a, float b, float eps = 1e-5f) {
    return std::fabs(a - b) <= eps;
}

// Get the synthetic cluster center value for cluster j and feature k
inline float center_value(int j, int k) {
    switch (k) {
        case 0: return static_cast<float>(j);
        case 1: return static_cast<float>(2 * j);
        case 2: return static_cast<float>(-j);
        default: return 0.0f;
    }
}

// Fill points such that they form N_CLUSTERS clusters with known centers
void fill_points_clustered(float points[N_POINTS][N_FEATURES]) {
    int ppc = N_POINTS / N_CLUSTERS; // points per cluster
    for (int j = 0; j < N_CLUSTERS; ++j) {
        for (int i = 0; i < ppc; ++i) {
            int idx = j * ppc + i;
            for (int k = 0; k < N_FEATURES; ++k) {
                points[idx][k] = center_value(j, k);
            }
        }
    }
}

// Initialize centroids to the true centers (ideal initialization)
void set_centroids_true(float centroids[N_CLUSTERS][N_FEATURES]) {
    for (int j = 0; j < N_CLUSTERS; ++j) {
        for (int k = 0; k < N_FEATURES; ++k) {
            centroids[j][k] = center_value(j, k);
        }
    }
}

// Initialize all centroids to zero (degenerate case)
void set_centroids_zero(float centroids[N_CLUSTERS][N_FEATURES]) {
    for (int j = 0; j < N_CLUSTERS; ++j) {
        for (int k = 0; k < N_FEATURES; ++k) {
            centroids[j][k] = 0.0f;
        }
    }
}

// Initialize centroids to reversed true centers (permuted initialization)
void set_centroids_reversed(float centroids[N_CLUSTERS][N_FEATURES]) {
    for (int j = 0; j < N_CLUSTERS; ++j) {
        int src = N_CLUSTERS - 1 - j;
        for (int k = 0; k < N_FEATURES; ++k) {
            centroids[j][k] = center_value(src, k);
        }
    }
}

// Compute expected global mean of all points for the constructed dataset
void compute_expected_global_mean(float mean[N_FEATURES]) {
    for (int k = 0; k < N_FEATURES; ++k) mean[k] = 0.0f;
    for (int j = 0; j < N_CLUSTERS; ++j) {
        for (int k = 0; k < N_FEATURES; ++k) {
            mean[k] += center_value(j, k);
        }
    }
    // Each cluster contributes equally (same number of points), so divide by N_CLUSTERS
    for (int k = 0; k < N_FEATURES; ++k) mean[k] /= static_cast<float>(N_CLUSTERS);
}

int main() {
    float points[N_POINTS][N_FEATURES];
    float centroids[N_CLUSTERS][N_FEATURES];
    int assignments[N_POINTS];

    // Prepare dataset: N_CLUSTERS clusters, N_POINTS total
    fill_points_clustered(points);
    int ppc = N_POINTS / N_CLUSTERS;

    // Test 1: Ideal initialization - centroids at true centers
    // Expect: each point assigned to its cluster index; centroids unchanged.
    set_centroids_true(centroids);
    kmeans_clustering(points, centroids, assignments);

    for (int i = 0; i < N_POINTS; ++i) {
        int expected_cluster = i / ppc;
        assert(assignments[i] == expected_cluster);
    }
    for (int j = 0; j < N_CLUSTERS; ++j) {
        for (int k = 0; k < N_FEATURES; ++k) {
            assert(approx_equal(centroids[j][k], center_value(j, k)));
        }
    }
    std::cout << "Test 1 passed: Assignments and centroids match expected true centers.\n";

    // Test 2: Degenerate initialization - all centroids equal (zeros)
    // Expect: all points assigned to centroid index 0 (first minimal), centroid[0] becomes global mean, others remain zero.
    set_centroids_zero(centroids);
    kmeans_clustering(points, centroids, assignments);

    for (int i = 0; i < N_POINTS; ++i) {
        assert(assignments[i] == 0);
    }
    float global_mean[N_FEATURES];
    compute_expected_global_mean(global_mean);
    for (int k = 0; k < N_FEATURES; ++k) {
        assert(approx_equal(centroids[0][k], global_mean[k]));
    }
    for (int j = 1; j < N_CLUSTERS; ++j) {
        for (int k = 0; k < N_FEATURES; ++k) {
            assert(approx_equal(centroids[j][k], 0.0f));
        }
    }
    std::cout << "Test 2 passed: Degenerate case handled; centroid[0] is global mean, others unchanged.\n";

    // Test 3: Permuted initialization - centroids reversed
    // Expect: each point assigned to reversed index; centroids updated to reversed mapping of true centers.
    set_centroids_reversed(centroids);
    kmeans_clustering(points, centroids, assignments);

    for (int i = 0; i < N_POINTS; ++i) {
        int cluster = i / ppc;
        int expected_idx = N_CLUSTERS - 1 - cluster;
        assert(assignments[i] == expected_idx);
    }
    for (int j = 0; j < N_CLUSTERS; ++j) {
        int src = N_CLUSTERS - 1 - j;
        for (int k = 0; k < N_FEATURES; ++k) {
            assert(approx_equal(centroids[j][k], center_value(src, k)));
        }
    }
    std::cout << "Test 3 passed: Permuted initialization yields consistent reversed assignments and centroids.\n";

    // Print a small sample of results for visual confirmation
    std::cout << "Sample assignments (first 16 points): ";
    for (int i = 0; i < 16; ++i) {
        std::cout << assignments[i] << (i < 15 ? ' ' : '\n');
    }
    std::cout << "Final centroids (indices 0..3):\n";
    for (int j = 0; j < 4; ++j) {
        std::cout << "C" << j << ": ";
        for (int k = 0; k < N_FEATURES; ++k) {
            std::cout << centroids[j][k] << (k < N_FEATURES - 1 ? ' ' : '\n');
        }
    }

    std::cout << "All tests passed.\n";
    return 0;
}