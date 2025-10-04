// contents of primMST_tb.cpp
#include <iostream>
#include <cassert>

// Include the source under test (no main() defined there)
#define V 1024

void primMST(int graph[V][V], int parent[V]);

// Use static storage to avoid large stack allocations
static int graph[V][V];
static int parent[V];

// Helper to clear the entire adjacency matrix (0 means no edge)
void clear_graph() {
    for (int i = 0; i < V; ++i) {
        for (int j = 0; j < V; ++j) {
            graph[i][j] = 0;
        }
    }
}

// Build a simple chain graph: 0-1-2-...-(V-1) with specified uniform weight
void build_chain_graph(int w) {
    clear_graph();
    for (int i = 0; i < V - 1; ++i) {
        graph[i][i + 1] = w;
        graph[i + 1][i] = w;
    }
}

// Build a star graph: node 0 connected to every other node with varying weights
void build_star_graph() {
    clear_graph();
    for (int i = 1; i < V; ++i) {
        int w = (i % 97) + 1; // ensure non-zero positive weights with some variety
        graph[0][i] = w;
        graph[i][0] = w;
    }
}

// Compute MST total weight from parent[] and graph[] (parent[0] == -1 by convention)
long long mst_total_weight() {
    long long sum = 0;
    for (int i = 1; i < V; ++i) {
        int p = parent[i];
        assert(p >= 0 && p < V);
        sum += graph[i][p];
    }
    return sum;
}

int main() {
    // Test 1: Chain graph with weight 1 between consecutive nodes
    // Expectation: parent[0] = -1; parent[i] = i-1 for i >= 1; total weight = V - 1
    {
        build_chain_graph(1);
        primMST(graph, parent);

        assert(parent[0] == -1);
        for (int i = 1; i < V; ++i) {
            assert(parent[i] == i - 1);
        }
        long long sum = mst_total_weight();
        assert(sum == (long long)(V - 1));
        std::cout << "Test 1 (Chain, w=1): PASS, MST total weight = " << sum << std::endl;
    }

    // Test 2: Star graph centered at node 0 with varying positive weights
    // Expectation: parent[0] = -1; parent[i] = 0 for all i >= 1; total weight = sum of weights from 0 to i
    {
        build_star_graph();
        primMST(graph, parent);

        assert(parent[0] == -1);
        for (int i = 1; i < V; ++i) {
            assert(parent[i] == 0);
        }
        long long expected = 0;
        for (int i = 1; i < V; ++i) {
            expected += (i % 97) + 1;
        }
        long long sum = mst_total_weight();
        assert(sum == expected);
        std::cout << "Test 2 (Star): PASS, MST total weight = " << sum << std::endl;
    }

    // Test 3: Chain graph with weight 10, plus cheaper shortcuts:
    // - Edge (0,2) set to weight 1 (shortcut)
    // - Edge (2,3) set to weight 1 (cheaper than chain)
    // Expectation on first few parents:
    //   parent[0] = -1, parent[1] = 0, parent[2] = 0, parent[3] = 2
    // Expected total weight: replace one 10-weight edge with two 1-weight edges.
    //   Original chain MST: 10*(V-1)
    //   New MST: 10*(V-3) + 1 + 1 = 10*(V-3) + 2
    {
        build_chain_graph(10);
        graph[0][2] = 1; graph[2][0] = 1; // shortcut
        graph[2][3] = 1; graph[3][2] = 1; // cheaper internal edge

        primMST(graph, parent);

        assert(parent[0] == -1);
        assert(parent[1] == 0);
        assert(parent[2] == 0);
        assert(parent[3] == 2);

        long long sum = mst_total_weight();
        long long expected = 10LL * (V - 3) + 2;
        assert(sum == expected);
        std::cout << "Test 3 (Chain w=10 with shortcuts): PASS, MST total weight = " << sum << std::endl;
    }

    std::cout << "All tests PASSED." << std::endl;
    return 0;
}