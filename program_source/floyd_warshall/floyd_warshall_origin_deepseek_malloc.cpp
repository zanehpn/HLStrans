// MALLOC_VARIANT
#define N 1024

void floyd_warshall(int graph[N][N], int dist[N][N]) {
    int* d = new int[N * N];

    // Initialize from graph
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            d[i * N + j] = graph[i][j];
        }
    }

    // Core computation on dynamically allocated buffer
    for (int k = 0; k < N; ++k) {
        for (int i = 0; i < N; ++i) {
            int dik = d[i * N + k];
            for (int j = 0; j < N; ++j) {
                int idx = i * N + j;
                int via = dik + d[k * N + j];
                if (via < d[idx]) {
                    d[idx] = via;
                }
            }
        }
    }

    // Copy back to output
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            dist[i][j] = d[i * N + j];
        }
    }

    delete[] d;
}
