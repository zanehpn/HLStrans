#include <vector>
#include <cstdlib>
#include <iostream>

std::vector<std::vector<double>>
matinv(const std::vector<std::vector<double>>& A) {
    int N = A.size();
    if (N == 0 || A[0].size() != (size_t)N) {
        throw std::runtime_error("Input must be a non-empty square matrix");
    }

    auto aug = new std::vector<std::vector<double>>(N, std::vector<double>(2 * N));
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            (*aug)[i][j] = A[i][j];
            (*aug)[i][j + N] = (i == j) ? 1.0 : 0.0;
        }
    }

    for (int k = 0; k < N; ++k) {
        double pivot = (*aug)[k][k];
        if (pivot == 0.0) {
            delete aug;
            throw std::runtime_error("Matrix is singular");
        }
        for (int j = 0; j < 2 * N; ++j) {
            (*aug)[k][j] /= pivot;
        }
        for (int i = 0; i < N; ++i) {
            if (i == k) continue;
            double factor = (*aug)[i][k];
            for (int j = 0; j < 2 * N; ++j) {
                (*aug)[i][j] -= factor * (*aug)[k][j];
            }
        }
    }

    std::vector<std::vector<double>> invA(N, std::vector<double>(N));
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            invA[i][j] = (*aug)[i][j + N];
        }
    }

    delete aug;
    return invA;
}
