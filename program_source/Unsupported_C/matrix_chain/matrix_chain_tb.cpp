// matrix_chain_tb.cpp
#include <cassert>
#include <iostream>

// DUT prototype (or include your hash_lookup_hls.cpp)
void matrixChain(int dims[5], int &minCost);

// HLS local N must match kernel
#define N 5

int main() {
    struct Test {
        int dims[N];
        int expectedCost;
    } tests[] = {
        // Classic example: dims = {30,35,15,5,10,20,25} would need N=7,
        // but here we use N=5: matrices A1(10x20), A2(20x30), A3(30x40), A4(40x30)
        {{10,20,30,40,30}, 30000},   // ((A1*A2)*A3)*A4
        {{5,10,3,12,5},     2010},   // optimal parenthesization cost
        {{2,3,4,5,6},       124},    // various splits
        {{1,2,3,4,5},       40},     // chain of increasing dims
    };
    const int numTests = sizeof(tests)/sizeof(tests[0]);

    for (int t = 0; t < numTests; ++t) {
        int minCost = -1;
        // Copy dims into local array
        int dims[N];
        for (int i = 0; i < N; ++i) dims[i] = tests[t].dims[i];

        // Invoke HLS kernel
        matrixChain(dims, minCost);

        // Check result
        if (minCost != tests[t].expectedCost) {
            std::cerr << "Test " << t << " FAILED:\n"
                      << "  dims = {";
            for (int i = 0; i < N; ++i) {
                std::cerr << dims[i] << (i+1<N ? "," : "");
            }
            std::cerr << "}\n"
                      << "  expected minCost = "
                      << tests[t].expectedCost
                      << ", got " << minCost << std::endl;
            return 1;
        } else {
            std::cout << "Test " << t
                      << " passed: minCost = " << minCost << std::endl;
        }
    }

    std::cout << "All " << numTests
              << " matrixChain tests passed." << std::endl;
    return 0;
}
