// ---- file: floyd_warshall.cpp ----
#define N 1024

void floyd_warshall(int graph[N][N], int dist[N][N]) {
#pragma HLS ARRAY_PARTITION variable=dist type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=dist type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=graph type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=graph type=cyclic dim=1 factor=8
    int i, j, k;

    // Initialize the solution matrix same as input graph matrix
    for (i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        for (j = 0; j < N; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=8
            dist[i][j] = graph[i][j];
        }
    }

    // Add all vertices one by one to the set of intermediate vertices
    for (k = 0; k < N; k++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        // Pick all vertices as source one by one
        for (i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
            // Pick all vertices as destination for the above picked source
            for (j = 0; j < N; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=2
                // If vertex k is on the shortest path from i to j, then update the value of dist[i][j]
                if (dist[i][k] + dist[k][j] < dist[i][j]) {
                    dist[i][j] = dist[i][k] + dist[k][j];
                }
            }
        }
    }
}

// Top function name: floyd_warshall
