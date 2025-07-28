#include <algorithm>
#include <limits>
#include <hls_stream.h>
#include <stdint.h>

const int N = 5;

constexpr long int factorial(const int N) {
    long int ret = 1;
    for (int i = 0; i < N; ++i)
        ret = ret * (i + 1);
    return ret;
}

unsigned int getDistance(const int perm[N], const uint16_t distances[N][N]) {
    unsigned int ret = 0;
    for (int i = 0; i < N - 1; ++i)
        ret += distances[perm[i]][perm[i + 1]];
    return ret;
}

int compute(unsigned long int i_, const uint16_t distances[N][N]) {
#pragma HLS INLINE
    unsigned long int i = i_;
    int perm[N] = {0};

    // Generate permutation in factorial number system
    for (int k = 0; k < N; ++k) {
        perm[k] = i / factorial(N - 1 - k);
        i = i % factorial(N - 1 - k);
    }
    // Adjust the permutation values
    for (char k = N - 1; k > 0; --k)
        for (char j = k - 1; j >= 0; --j)
            perm[k] += (perm[j] <= perm[k]);
    
    return getDistance(perm, distances);
}

void tsp(hls::stream<uint16_t>& streamDistances, unsigned int& shortestDistance) {
    // AXI-Stream interface for distances
#pragma HLS INTERFACE axis port=streamDistances
#pragma HLS INTERFACE ap_ctrl_none port=return

    // Read the distance matrix from the stream
    uint16_t distances[N][N];
    for (int i = 0; i < N * N; ++i) {
        uint16_t val;
        streamDistances >> val;
        distances[i / N][i % N] = val;
    }

    // Iterate over all (N-1)! permutations (one city fixed)
    constexpr long int fact = factorial(N - 1);
    unsigned int candidate = std::numeric_limits<unsigned int>::max();
    for (unsigned long int i = 0; i < fact; ++i) {
#pragma HLS PIPELINE II=1
        candidate = std::min(candidate, (unsigned int)compute(i, distances));
    }

    shortestDistance = candidate;
}

