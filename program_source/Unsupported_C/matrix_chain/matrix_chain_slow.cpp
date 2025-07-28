#include <vector>

int matrixChain(const std::vector<int>& dims, int i, int j) {
    if (i == j) return 0;
    int best = 100000;
    for (int k = i; k < j; ++k) {
        int cost = matrixChain(dims, i, k)
                 + matrixChain(dims, k+1, j)
                 + dims[i-1]*dims[k]*dims[j];
        if (cost < best) best = cost;
    }
    return best;
}
