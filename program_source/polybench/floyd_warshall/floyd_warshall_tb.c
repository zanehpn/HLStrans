// floyd_warshall_tb.cpp
#include <iostream>
#include <limits>
#include <cstring>
#include "floyd_warshall.h"

static const int INF = 1000000;

// Reference 4×4 graph
//   0 → 1 (3), 0 → 2 (INF), 0 → 3 (7)
//   1 → 0 (8), 1 → 2 (2),   1 → 3 (INF)
//   2 → 0 (5), 2 → 1 (INF), 2 → 3 (1)
//   3 → · (no outgoing edges)
int base_n = 4;
int base_graph[4][4] = {
    {0,   3, INF, 7},
    {8,   0,   2, INF},
    {5, INF,   0,   1},
    {INF,INF,INF,   0}
};

// Known shortest-path result for the above graph
int expected[4][4] = {
    {0,   3,   5,   6},
    {7,   0,   2,   3},
    {5,   8,   0,   1},
    {INF,INF,INF,   0}
};

int main() {
    // 1) Initialize a 60×60 path matrix to INF, then copy base_graph
    int path[60][60];
    for (int i = 0; i < 60; i++)
        for (int j = 0; j < 60; j++)
            path[i][j] = (i == j ? 0 : INF);

    // Copy our 4×4 test graph into the top-left corner
    for (int i = 0; i < base_n; i++)
        for (int j = 0; j < base_n; j++)
            path[i][j] = base_graph[i][j];

    // 2) Run Floyd–Warshall
    floyd_warshall(path);

    // 3) Verify results in the 4×4 block
    bool ok = true;
    for (int i = 0; i < base_n && ok; i++) {
        for (int j = 0; j < base_n; j++) {
            int got = path[i][j];
            int want = expected[i][j];
            // Compare, allowing INF sentinel
            if (got != want) {
                std::cerr << "Mismatch at [" << i << "][" << j << "]: got "
                          << got << ", want " << want << "\n";
                ok = false;
                break;
            }
        }
    }

    // 4) Print PASS/FAIL
    if (ok) {
        std::cout << "PASS\n";
        return 0;
    } else {
        std::cout << "FAIL\n";
        return 1;
    }
}
