// ---- file: bellman_ford.cpp ----
#include <limits.h>

#define V 1024 // Number of vertices in the graph
#define E 2048 // Number of edges in the graph

void bellman_ford(int graph[E][3], int src, int dist[V]) {
#pragma HLS ARRAY_PARTITION variable=dist type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=graph type=cyclic dim=2 factor=16
#pragma HLS ARRAY_PARTITION variable=graph type=cyclic dim=1 factor=16
    int i, j;

    // Step 1: Initialize distances from src to all other vertices as INFINITE
    for (i = 0; i < V; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=8
        dist[i] = INT_MAX;
    }
    dist[src] = 0;

    // Step 2: Relax all edges |V| - 1 times.
    for (i = 1; i <= V - 1; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for (j = 0; j < E; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=4
            int u = graph[j][0];
            int v = graph[j][1];
            int weight = graph[j][2];
            if (dist[u] != INT_MAX && dist[u] + weight < dist[v]) {
                dist[v] = dist[u] + weight;
            }
        }
    }

    // Step 3: Check for negative-weight cycles.
    for (i = 0; i < E; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        int u = graph[i][0];
        int v = graph[i][1];
        int weight = graph[i][2];
        if (dist[u] != INT_MAX && dist[u] + weight < dist[v]) {
            // If we get here, then there is a negative weight cycle.
            // For simplicity, we will just set all distances to INT_MAX to indicate this.
            for (j = 0; j < V; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
                dist[j] = INT_MAX;
            }
            return;
        }
    }
}

// Top function name: bellman_ford
