// Converted from floyd_warshall_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: floyd_warshall.cpp ----
#define N 1024

void floyd_warshall(int graph[N][N], int dist[N][N]) {

    int i, j, k;

    // Initialize the solution matrix same as input graph matrix
    for (i = 0; i < N; i++) {

        for (j = 0; j < N; j++) {

            dist[i][j] = graph[i][j];
        }
    }

    // Add all vertices one by one to the set of intermediate vertices
    for (k = 0; k < N; k++) {

        // Pick all vertices as source one by one
        for (i = 0; i < N; i++) {

            // Pick all vertices as destination for the above picked source
            for (j = 0; j < N; j++) {

                // If vertex k is on the shortest path from i to j, then update the value of dist[i][j]
                if (dist[i][k] + dist[k][j] < dist[i][j]) {
                    dist[i][j] = dist[i][k] + dist[k][j];
                }
            }
        }
    }
}

// Top function name: floyd_warshall
