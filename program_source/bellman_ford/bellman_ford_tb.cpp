// contents of bellman_ford_tb.cpp
#include <iostream>
#include <cassert>
#include <climits>

// Include the source under test (no main() defined there)
#define V 1024 // Number of vertices in the graph
#define E 2048 // Number of edges in the graph

void bellman_ford(int graph[E][3], int src, int dist[V]);
// Helper to initialize graph with no-op edges (0->0 weight 0) for remaining slots
void init_graph(int graph[E][3]) {
    for (int i = 0; i < E; ++i) {
        graph[i][0] = 0;
        graph[i][1] = 0;
        graph[i][2] = 0;
    }
}

// Helper to populate the first M edges of the graph
void load_edges(int graph[E][3], const int edges[][3], int M) {
    for (int i = 0; i < M; ++i) {
        graph[i][0] = edges[i][0];
        graph[i][1] = edges[i][1];
        graph[i][2] = edges[i][2];
    }
}

// Helper to print first N distances
void print_firstN_dist(const int dist[V], int N) {
    for (int i = 0; i < N; ++i) {
        if (dist[i] == INT_MAX) {
            std::cout << "dist[" << i << "] = INF\n";
        } else {
            std::cout << "dist[" << i << "] = " << dist[i] << "\n";
        }
    }
}

int main() {
    // Test 1: Positive-weight graph (no negative edges), verify standard shortest paths
    {
        std::cout << "Test 1: Positive weights, no negative edges\n";
        int graph[E][3];
        int dist[V];
        init_graph(graph);

        // Small 5-vertex graph (0..4), first 10 edges used
        // Expected shortest distances from src=0: [0, 8, 9, 5, 7]
        const int edges1[][3] = {
            {0, 1, 10},
            {0, 3, 5},
            {1, 2, 1},
            {1, 3, 2},
            {2, 4, 4},
            {3, 1, 3},
            {3, 2, 9},
            {3, 4, 2},
            {4, 0, 7},
            {4, 2, 6}
        };
        load_edges(graph, edges1, 10);

        int src = 0;
        bellman_ford(graph, src, dist);

        // Print a subset of distances for inspection
        print_firstN_dist(dist, 5);

        // Validate expected distances
        assert(dist[0] == 0);
        assert(dist[1] == 8);
        assert(dist[2] == 9);
        assert(dist[3] == 5);
        assert(dist[4] == 7);

        // Also ensure an unrelated higher-index vertex remains unreachable (INT_MAX)
        assert(dist[10] == INT_MAX);

        std::cout << "Test 1 passed.\n\n";
    }

    // Test 2: Graph with negative edges but NO negative-weight cycle
    // Validate that distances are computed correctly and no INF reset occurs
    {
        std::cout << "Test 2: Negative edges, no negative cycles\n";
        int graph[E][3];
        int dist[V];
        init_graph(graph);

        // CLRS-style example, 5 vertices (0..4)
        // Expected shortest distances from src=0: [0, 2, 7, 4, -2]
        const int edges2[][3] = {
            {0, 1, 6},
            {0, 2, 7},
            {1, 2, 8},
            {1, 3, 5},
            {1, 4, -4},
            {2, 3, -3},
            {2, 4, 9},
            {3, 1, -2},
            {4, 3, 7},
            {4, 0, 2}
        };
        load_edges(graph, edges2, 10);

        int src = 0;
        bellman_ford(graph, src, dist);

        // Print a subset of distances for inspection
        print_firstN_dist(dist, 5);

        // Validate expected distances
        assert(dist[0] == 0);
        assert(dist[1] == 2);
        assert(dist[2] == 7);
        assert(dist[3] == 4);
        assert(dist[4] == -2);

        std::cout << "Test 2 passed.\n\n";
    }

    // Test 3: Graph with a reachable negative-weight cycle
    // The implementation sets all distances to INT_MAX upon detection
    {
        std::cout << "Test 3: Negative-weight cycle detection\n";
        int graph[E][3];
        int dist[V];
        init_graph(graph);

        // Negative cycle between 1 and 2 reachable from 0
        // 0 -> 1 (1), 1 -> 2 (-1), 2 -> 1 (-1) => cycle total -2
        const int edges3[][3] = {
            {0, 1, 1},
            {1, 2, -1},
            {2, 1, -1}
        };
        load_edges(graph, edges3, 3);

        int src = 0;
        bellman_ford(graph, src, dist);

        // Print a subset of distances for inspection (should all be INF after detection)
        print_firstN_dist(dist, 5);

        // Validate that detection occurred and distances are set to INT_MAX
        assert(dist[0] == INT_MAX);
        assert(dist[1] == INT_MAX);
        assert(dist[2] == INT_MAX);
        assert(dist[3] == INT_MAX);
        assert(dist[4] == INT_MAX);

        std::cout << "Test 3 passed.\n\n";
    }

    std::cout << "All tests passed successfully.\n";
    return 0;
}