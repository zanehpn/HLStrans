// Converted from wallace_tree_adder_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: wallace_tree_adder.cpp ----
#include <cstdint>
#include <vector>

#define N 1024

void wallace_tree_adder(int32_t A[N], int32_t B[N], int32_t C[N]) {

    std::vector<int32_t> partial_sums(N * N, 0);
    std::vector<int32_t> carry(N * N, 0);

    // Generate partial sums and carry
    for (int i = 0; i < N; i++) {

        for (int j = 0; j < N; j++) {
            int idx = i * N + j;

            if (j == 0) {
                partial_sums[idx] = A[i] ^ B[i];
                carry[idx] = A[i] & B[i];
            } else {
                int prev_idx = i * N + (j - 1);
                partial_sums[idx] = partial_sums[prev_idx] ^ carry[prev_idx];
                carry[idx] = partial_sums[prev_idx] & carry[prev_idx];
            }
        }
    }

    // Sum the partial sums and carry to get the final result
    for (int i = 0; i < N; i++) {
        int last_idx = i * N + (N - 1);
        C[i] = partial_sums[last_idx] ^ carry[last_idx];
    }
}

// Top function name: wallace_tree_adder
