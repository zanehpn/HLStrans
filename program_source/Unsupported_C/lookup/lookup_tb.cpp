// hash_lookup_tb.cpp
#include <cassert>
#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>
#include <algorithm>

#define M 1024
#define Q 256

// DUT prototype
void lookup(int keys[M], int data[M], int table_key[M], int table_val[M],
            int queries[Q], int out[Q]);

int main() {
    std::srand(42);
    // 1) Prepare input arrays
    static int keys[M];
    static int data[M];
    static int table_key[M];
    static int table_val[M];
    static int queries[Q];
    static int out[Q];

    // Fill keys and data with unique keys
    for (int i = 0; i < M; ++i) {
        keys[i] = i * 2 + 1;       // odd numbers
        data[i] = keys[i] + 1000;  // e.g., value = key + 1000
    }

    // 2) Generate some queries: mix of existing keys in random order
    std::vector<int> shuffled_keys(keys, keys + M);
    std::random_shuffle(shuffled_keys.begin(), shuffled_keys.end());
    for (int qi = 0; qi < Q; ++qi) {
        queries[qi] = shuffled_keys[qi];
    }

    // 3) Call DUT
    lookup(keys, data, table_key, table_val, queries, out);

    // 4) Verify outputs
    for (int qi = 0; qi < Q; ++qi) {
        int k = queries[qi];
        int expected = k + 1000;
        if (out[qi] != expected) {
            std::cerr << "Mismatch at query " << qi << ": key=" << k
                      << ", got=" << out[qi]
                      << ", expected=" << expected << std::endl;
            return 1;
        }
    }

    std::cout << "hash_lookup_hls test passed for " << Q << " queries." << std::endl;
    return 0;
}
