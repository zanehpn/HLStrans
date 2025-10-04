// ---- file: dijkstra.cpp ----
#include <limits.h>

#define N 1024

void dijkstra(int graph[N][N], int src, int dist[N]) {
#pragma HLS ARRAY_PARTITION variable=dist type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=graph type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=graph type=cyclic dim=1 factor=8
    bool sptSet[N]; // sptSet[i] will be true if vertex i is included in shortest path tree
    int i, count, v, u, min;

    // Initialize all distances as INFINITE and stpSet[] as false
    for (i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=16
        dist[i] = INT_MAX;
        sptSet[i] = false;
    }

    // Distance of source vertex from itself is always 0
    dist[src] = 0;

    // Find shortest path for all vertices
    for (count = 0; count < N - 1; count++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        // Pick the minimum distance vertex from the set of vertices not yet processed.
        min = INT_MAX;
        for (v = 0; v < N; v++)
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
            if (sptSet[v] == false && dist[v] <= min)
                min = dist[v], u = v;

        // Mark the picked vertex as processed
        sptSet[u] = true;

        // Update dist value of the adjacent vertices of the picked vertex.
        for (v = 0; v < N; v++)
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            if (!sptSet[v] && graph[u][v] && dist[u] != INT_MAX && dist[u] + graph[u][v] < dist[v])
                dist[v] = dist[u] + graph[u][v];
    }
}

// Top function name: dijkstra
