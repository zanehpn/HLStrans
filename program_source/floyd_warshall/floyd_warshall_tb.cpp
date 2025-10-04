// contents of floyd_warshall_tb.cpp
// Standalone C++ testbench for floyd_warshall.cpp

#include <iostream>
#include <limits>

// Include the source directly since it does not define main()
// This avoids duplicate symbol issues if built as a single translation unit.
#define N 1024

void floyd_warshall(int graph[N][N], int dist[N][N]) ;

// Allocate the large matrices in global/static storage to avoid stack overflow.
static int graph[N][N];
static int dist[N][N];

// Helper to print a small submatrix (for readability, we show only the top-left KxK)
static void printSubmatrix(const int m[N][N], int K) {
    for (int i = 0; i < K; ++i) {
        for (int j = 0; j < K; ++j) {
            std::cout << m[i][j] << (j + 1 == K ? "" : " ");
        }
        std::cout << "\n";
    }
}

int main() {
    // Use a finite "infinity" that won't overflow when added twice
    const int INF = 1000000;

    // Test Case 1: A simple 4-node directed graph embedded in the top-left corner.
    // Description:
    //   0 -> 1 (5)
    //   0 -> 3 (10)
    //   1 -> 2 (3)
    //   2 -> 3 (1)
    //
    // Expected shortest paths within nodes {0,1,2,3}:
    //   dist[0][2] = 8  via 0->1->2
    //   dist[0][3] = 9  via 0->1->2->3 (better than direct 10)
    //   dist[1][3] = 4  via 1->2->3
    //   dist[i][i] = 0 for i in {0..3}
    //   No other connections: remain INF
    std::cout << "Running Test Case 1 (embedded 4-node graph)...\n";

    // Initialize entire NxN graph with 0 on diagonal and INF elsewhere
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            graph[i][j] = (i == j) ? 0 : INF;
        }
    }

    // Define edges for the 4-node graph in the upper-left corner
    graph[0][1] = 5;
    graph[0][3] = 10;
    graph[1][2] = 3;
    graph[2][3] = 1;

    // Run Floyd-Warshall
    floyd_warshall(graph, dist);

    // Print the top-left 4x4 submatrix of the resulting distance matrix
    std::cout << "Top-left 4x4 submatrix of shortest paths:\n";
    printSubmatrix(dist, 4);

    // Verify expected shortest paths in the 4-node subgraph
    int failures = 0;

    auto check_eq = [&](int actual, int expected, const char* label) {
        if (actual != expected) {
            std::cout << "FAIL: " << label << " expected " << expected << " but got " << actual << "\n";
            failures++;
        } else {
            std::cout << "PASS: " << label << " == " << expected << "\n";
        }
    };

    check_eq(dist[0][2], 8,  "dist[0][2]");
    check_eq(dist[0][3], 9,  "dist[0][3]");
    check_eq(dist[1][3], 4,  "dist[1][3]");
    check_eq(dist[0][0], 0,  "dist[0][0]");
    check_eq(dist[1][1], 0,  "dist[1][1]");
    check_eq(dist[2][2], 0,  "dist[2][2]");
    check_eq(dist[3][3], 0,  "dist[3][3]");

    // For some pairs we expect INF (no path)
    auto check_inf = [&](int actual, const char* label) {
        if (actual != INF) {
            std::cout << "FAIL: " << label << " expected INF(" << INF << ") but got " << actual << "\n";
            failures++;
        } else {
            std::cout << "PASS: " << label << " == INF(" << INF << ")\n";
        }
    };

    check_inf(dist[3][0], "dist[3][0]");
    check_inf(dist[3][1], "dist[3][1]");
    check_inf(dist[1][0], "dist[1][0]");
    check_inf(dist[2][0], "dist[2][0]");

    if (failures == 0) {
        std::cout << "All Test Case 1 checks passed.\n";
    } else {
        std::cout << failures << " checks failed in Test Case 1.\n";
    }

    return failures == 0 ? 0 : 1;
}