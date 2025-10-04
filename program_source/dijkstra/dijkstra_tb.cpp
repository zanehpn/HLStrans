// contents of dijkstra_tb.cpp
#include <iostream>
#include <climits>
#include <cassert>
#include <cstring>

// Include the source to avoid duplicate symbol issues (source has no main()).
#define N 1024

void dijkstra(int graph[N][N], int src, int dist[N]) ;
static int g_graph[N][N];

static void zero_graph(int graph[N][N]) {
    std::memset(graph, 0, sizeof(int) * N * N);
}

static void set_edge(int graph[N][N], int u, int v, int w, bool undirected = true) {
    graph[u][v] = w;
    if (undirected) graph[v][u] = w;
}

static void print_dist(const int dist[N], int upto) {
    for (int i = 0; i < upto; ++i) {
        if (dist[i] == INT_MAX) {
            std::cout << "dist[" << i << "] = INF\n";
        } else {
            std::cout << "dist[" << i << "] = " << dist[i] << "\n";
        }
    }
    std::cout << std::flush;
}

// Build a small undirected graph embedded in the large N=1024 graph:
// 0--4--1
// |     |
// 1     1
// |     |
// 2--5--3--3--4
// with edges: (0-1:4), (0-2:1), (2-1:2), (1-3:1), (2-3:5), (3-4:3)
static void build_small_graph() {
    zero_graph(g_graph);
    set_edge(g_graph, 0, 1, 4, true);
    set_edge(g_graph, 0, 2, 1, true);
    set_edge(g_graph, 2, 1, 2, true);
    set_edge(g_graph, 1, 3, 1, true);
    set_edge(g_graph, 2, 3, 5, true);
    set_edge(g_graph, 3, 4, 3, true);
}

// Test 1: Basic correctness from source 0 on the small graph
static void test_basic_from_0() {
    build_small_graph();
    int dist[N];
    dijkstra(g_graph, 0, dist);

    // Expected distances for nodes 0..4:
    // 0->0 = 0
    // 0->1 = min(4, 0->2->1=1+2=3) = 3
    // 0->2 = 1
    // 0->3 = min(0->2->1->3=1+2+1=4, 0->2->3=1+5=6) = 4
    // 0->4 = 0->3->4 = 4 + 3 = 7
    int exp[5] = {0, 3, 1, 4, 7};
    for (int i = 0; i < 5; ++i) {
        assert(dist[i] == exp[i]);
    }
    // Unconnected nodes beyond the small graph should remain unreachable
    assert(dist[6] == INT_MAX);
    assert(dist[10] == INT_MAX);
    assert(dist[1023] == INT_MAX);

    std::cout << "Test 1 (src=0) distances for nodes 0..4:\n";
    print_dist(dist, 5);
    std::cout << "Test 1 passed.\n\n";
}



int main() {
    // Run all tests and report
    test_basic_from_0();   // Verify shortest paths from node 0

    std::cout << "All tests passed.\n";
    return 0;
}