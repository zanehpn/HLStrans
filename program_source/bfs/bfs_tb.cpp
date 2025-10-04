// contents of bfs_tb.cpp
#include <iostream>
#include <cassert>

// Include the DUT implementation (no main() defined there)
#include "bfs.cpp"

// Shared graph buffer for tests
static int g[N][N];

static void clear_graph() {
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            g[i][j] = 0;
        }
    }
}

static void test_linear_chain_directed() {
    // Test 1: Directed linear chain 0->1->2->3->4->5
    // Expect distances from 0: [0,1,2,3,4,5] and others -1
    clear_graph();
    for (int i = 0; i < 5; ++i) {
        g[i][i + 1] = 1;
    }

    int dist[N];
    bfs(g, 0, dist);

    for (int i = 0; i <= 5; ++i) {
        assert(dist[i] == i);
    }
    for (int i = 6; i < 16; ++i) {
        assert(dist[i] == -1);
    }
    std::cout << "Test 1a (linear chain from 0) passed.\n";

    // Now start BFS from node 3 on the same directed chain
    // Expect distances: 3->0, 4->1, 5->2; nodes 0..2 unreachable (-1)
    bfs(g, 3, dist);
    assert(dist[3] == 0);
    assert(dist[4] == 1);
    assert(dist[5] == 2);
    for (int i = 0; i <= 2; ++i) {
        assert(dist[i] == -1);
    }
    for (int i = 6; i < 12; ++i) {
        assert(dist[i] == -1);
    }
    std::cout << "Test 1b (linear chain from 3) passed.\n";
}

static void test_undirected_branches() {
    // Test 2: Undirected graph with branching
    // Graph:
    // 0-1, 0-2, 1-3, 2-3, 2-4, 4-5
    // Expect distances from 0: 0->0, 1->1, 2->1, 3->2, 4->2, 5->3
    clear_graph();
    g[0][1] = g[1][0] = 1;
    g[0][2] = g[2][0] = 1;
    g[1][3] = g[3][1] = 1;
    g[2][3] = g[3][2] = 1;
    g[2][4] = g[4][2] = 1;
    g[4][5] = g[5][4] = 1;

    int dist[N];
    bfs(g, 0, dist);

    assert(dist[0] == 0);
    assert(dist[1] == 1);
    assert(dist[2] == 1);
    assert(dist[3] == 2);
    assert(dist[4] == 2);
    assert(dist[5] == 3);

    // Spot-check a couple of unrelated nodes remain unreachable
    for (int i = 6; i < 12; ++i) {
        assert(dist[i] == -1);
    }
    std::cout << "Test 2 (undirected branches from 0) passed.\n";
}

static void test_disconnected_components() {
    // Test 3: Disconnected components
    // Component A: 10-11-12 (undirected chain)
    // Start from 10; nodes outside A should be unreachable
    clear_graph();
    g[10][11] = g[11][10] = 1;
    g[11][12] = g[12][11] = 1;

    int dist[N];
    bfs(g, 10, dist);

    assert(dist[10] == 0);
    assert(dist[11] == 1);
    assert(dist[12] == 2);
    assert(dist[0] == -1);
    assert(dist[100] == -1);
    assert(dist[N - 1] == -1);
    std::cout << "Test 3 (disconnected components from 10) passed.\n";
}

static void test_empty_graph_start_last_node() {
    // Test 4: Empty graph, start at last node (N-1)
    // Expect only the start node distance 0, all others -1
    clear_graph();

    int dist[N];
    bfs(g, N - 1, dist);

    assert(dist[N - 1] == 0);
    assert(dist[0] == -1);
    assert(dist[123] == -1);
    std::cout << "Test 4 (empty graph from N-1) passed.\n";
}

static void test_self_loop() {
    // Test 5: Self-loop at node 7
    // Expect distance at 7 is 0 and no other nodes are reachable
    clear_graph();
    g[7][7] = 1;

    int dist[N];
    bfs(g, 7, dist);

    assert(dist[7] == 0);
    for (int i = 0; i < N; ++i) {
        if (i == 7) continue;
        assert(dist[i] == -1);
    }
    std::cout << "Test 5 (self-loop at 7) passed.\n";
}

int main() {
    std::cout << "Running BFS testbench...\n";

    test_linear_chain_directed();
    test_undirected_branches();
    test_disconnected_components();
    test_empty_graph_start_last_node();
    test_self_loop();

    std::cout << "All BFS tests passed successfully.\n";
    return 0;
}