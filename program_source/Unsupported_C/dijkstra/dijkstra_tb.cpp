// dijkstra_tb.cpp
#include <cassert>
#include <iostream>
#include <vector>
#include <cstring>

#define MAXV 256
#define MAXE 1024

typedef struct { int v, w, next; } Edge;

// HLS kernel prototype
void dijkstra(int head[MAXV], Edge edges[MAXE],
                  int dist[MAXV], int src);

int main() {
    // Example graph (5 vertices: 0..4)
    // Edges:
    // 0 -> 1 (weight 10)
    // 0 -> 2 (3)
    // 1 -> 2 (1)
    // 1 -> 3 (2)
    // 2 -> 1 (4)
    // 2 -> 3 (8)
    // 2 -> 4 (2)
    // 3 -> 4 (7)
    // 4 -> 3 (9)

    const int V = 5;

    // Prepare head array, initialize to -1
    static int head[MAXV];
    std::fill(head, head + MAXV, -1);

    // Prepare edges array and linked lists
    static Edge edges[MAXE];
    int edge_cnt = 0;
    auto add_edge = [&](int u, int v, int w) {
        edges[edge_cnt] = {v, w, head[u]};
        head[u] = edge_cnt;
        ++edge_cnt;
    };

    // Build the graph
    add_edge(0, 1, 10);
    add_edge(0, 2, 3);
    add_edge(1, 2, 1);
    add_edge(1, 3, 2);
    add_edge(2, 1, 4);
    add_edge(2, 3, 8);
    add_edge(2, 4, 2);
    add_edge(3, 4, 7);
    add_edge(4, 3, 9);

    // Prepare dist array
    static int dist[MAXV];
    // Initialize dist to a sentinel
    for (int i = 0; i < MAXV; ++i) {
        dist[i] = -1;
    }

    int src = 0;

    // Call the HLS Dijkstra kernel
    dijkstra(head, edges, dist, src);

    // Expected shortest distances from source 0:
    // dist[0]=0, dist[1]=7, dist[2]=3, dist[3]=9, dist[4]=5
    int expected[MAXV];
    for (int i = 0; i < MAXV; ++i) expected[i] = -1;
    expected[0] = 0;
    expected[1] = 7;
    expected[2] = 3;
    expected[3] = 9;
    expected[4] = 5;

    // Validate results
    for (int i = 0; i < V; ++i) {
        if (dist[i] != expected[i]) {
            std::cerr << "Error: dist[" << i << "] = " << dist[i]
                      << ", expected " << expected[i] << std::endl;
            return 1;
        }
    }

    std::cout << "Dijkstra HLS test passed. Distances from source "
              << src << ":";
    for (int i = 0; i < V; ++i) {
        std::cout << " " << dist[i];
    }
    std::cout << std::endl;

    return 0;
}
