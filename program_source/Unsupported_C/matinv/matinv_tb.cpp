// file: matinv_tb.cpp

#include <iostream>
#include <iomanip>
#include <cmath>
#include <cstdlib>
#include <ctime>

static const int N = 16;
static const float EPS = 1e-3f;

// Prototype of the HLS kernel
void matinv(float A[N][N], float invA[N][N]);

// Reference CPU Gaussian‑Jordan inversion
bool invert_cpu(float A[N][N], float inv[N][N]) {
    // Create augmented matrix [A | I]
    float aug[N][2*N];
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            aug[i][j]     = A[i][j];
            aug[i][j+N]   = (i==j) ? 1.0f : 0.0f;
        }
    }
    // Forward elimination
    for (int k = 0; k < N; ++k) {
        // Pivot normalization
        float pivot = aug[k][k];
        if (std::fabs(pivot) < 1e-6f) return false;  // singular
        for (int j = 0; j < 2*N; ++j)
            aug[k][j] /= pivot;
        // Eliminate other rows
        for (int i = 0; i < N; ++i) {
            if (i == k) continue;
            float factor = aug[i][k];
            for (int j = 0; j < 2*N; ++j)
                aug[i][j] -= factor * aug[k][j];
        }
    }
    // Extract inverse
    for (int i = 0; i < N; ++i)
        for (int j = 0; j < N; ++j)
            inv[i][j] = aug[i][j+N];
    return true;
}

int main() {
    // Seed RNG
    std::srand(static_cast<unsigned>(std::time(nullptr)));

    // Allocate matrices
    static float A[N][N], invA_hls[N][N], invA_ref[N][N];

    // Initialize A to a random invertible matrix (diagonally dominant)
    for (int i = 0; i < N; ++i) {
        float row_sum = 0.0f;
        for (int j = 0; j < N; ++j) {
            float v = static_cast<float>(std::rand()%100) / 50.0f; // [0,2)
            A[i][j] = v;
            row_sum += std::fabs(v);
        }
        A[i][i] += row_sum;  // make diagonally dominant → invertible
    }

    // Zero initialize outputs
    for (int i = 0; i < N; ++i)
        for (int j = 0; j < N; ++j)
            invA_hls[i][j] = 0.0f;

    // 1) Call HLS kernel
    matinv(A, invA_hls);

    // 2) Compute CPU reference
    bool ok = invert_cpu(A, invA_ref);
    if (!ok) {
        std::cerr << "Reference inversion failed (singular matrix)\n";
        return 1;
    }

    // 3) Compare results
    bool pass = true;
    for (int i = 0; i < N && pass; ++i) {
        for (int j = 0; j < N; ++j) {
            float diff = std::fabs(invA_hls[i][j] - invA_ref[i][j]);
            if (diff > EPS) {
                std::cout << std::fixed << std::setprecision(6)
                          << "Mismatch at ("<<i<<","<<j<<"): "
                          << "HLS="<<invA_hls[i][j]
                          << " REF="<<invA_ref[i][j]
                          << " DIFF="<<diff<<"\n";
                pass = false;
                break;
            }
        }
    }

    // 4) Report
    if (pass) {
        std::cout << "TEST PASSED\n";
        return 0;
    } else {
        std::cout << "TEST FAILED\n";
        return 1;
    }
}
