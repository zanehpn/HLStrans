#include <limits.h>
#define N 5

void matrixChain(int dims[N], int &minCost) {
    #pragma HLS INTERFACE s_axilite port=dims bundle=ctrl
    #pragma HLS INTERFACE s_axilite port=minCost bundle=ctrl
    #pragma HLS INTERFACE s_axilite port=return bundle=ctrl

    static int dp[N][N];
    #pragma HLS ARRAY_PARTITION variable=dp complete dim=2

    for (int i = 0; i < N; ++i) {
        #pragma HLS PIPELINE II=1
        dp[i][i] = 0;
    }
    for (int len = 2; len < N; ++len) {
        for (int i = 0; i + len < N; ++i) {
            #pragma HLS PIPELINE II=1
            int j = i + len;
            int best = INT_MAX;
            for (int k = i; k < j; ++k) {
                int cost = dp[i][k] + dp[k+1][j]
                         + dims[i]*dims[k+1]*dims[j+1];
                if (cost < best) best = cost;
            }
            dp[i][j] = best;
        }
    }
    minCost = dp[0][N-1];
}
