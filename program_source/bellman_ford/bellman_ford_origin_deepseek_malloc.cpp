// ---- MALLOC_VARIANT: bellman_ford.cpp ----
#include <limits.h>
#include <cstdlib>

#define V 1024 // Number of vertices in the graph
#define E 2048 // Number of edges in the graph

void bellman_ford(int graph[E][3], int src, int dist[V]) {

    // Dynamic copies for large arrays
    int* graph_dyn = (int*)std::malloc(E * 3 * sizeof(int));
    int* dist_dyn  = (int*)std::malloc(V * sizeof(int));

    // Copy graph into dynamic storage
    for (int j = 0; j < E; j++) {
        graph_dyn[j * 3 + 0] = graph[j][0];
        graph_dyn[j * 3 + 1] = graph[j][1];
        graph_dyn[j * 3 + 2] = graph[j][2];
    }

    // Initialize distances
    for (int i = 0; i < V; i++) {
        dist_dyn[i] = INT_MAX;
    }
    dist_dyn[src] = 0;

    // Relax all edges |V| - 1 times.
    for (int i = 1; i <= V - 1; i++) {
        for (int j = 0; j < E; j++) {
            int u = graph_dyn[j * 3 + 0];
            int v = graph_dyn[j * 3 + 1];
            int weight = graph_dyn[j * 3 + 2];
            if (dist_dyn[u] != INT_MAX && dist_dyn[u] + weight < dist_dyn[v]) {
                dist_dyn[v] = dist_dyn[u] + weight;
            }
        }
    }

    // Check for negative-weight cycles.
    for (int i = 0; i < E; i++) {
        int u = graph_dyn[i * 3 + 0];
        int v = graph_dyn[i * 3 + 1];
        int weight = graph_dyn[i * 3 + 2];
        if (dist_dyn[u] != INT_MAX && dist_dyn[u] + weight < dist_dyn[v]) {
            // Negative weight cycle detected: set all distances to INT_MAX.
            for (int j = 0; j < V; j++) {
                dist_dyn[j] = INT_MAX;
            }
            // Copy back and free
            for (int k = 0; k < V; k++) {
                dist[k] = dist_dyn[k];
            }
            std::free(graph_dyn);
            std::free(dist_dyn);
            return;
        }
    }

    // Copy results back to output array
    for (int i = 0; i < V; i++) {
        dist[i] = dist_dyn[i];
    }

    std::free(graph_dyn);
    std::free(dist_dyn);
}
