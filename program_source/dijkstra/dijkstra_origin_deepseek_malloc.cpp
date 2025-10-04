#include <limits.h>
#define N 1024

void dijkstra(int graph[N][N], int src, int dist[N]) {
    bool* sptSet = new bool[N];
    int i, count, v, u = -1, min;

    for (i = 0; i < N; i++) {
        dist[i] = INT_MAX;
        sptSet[i] = false;
    }

    dist[src] = 0;

    for (count = 0; count < N - 1; count++) {
        min = INT_MAX;
        u = -1;
        for (v = 0; v < N; v++) {
            if (!sptSet[v] && dist[v] <= min) {
                min = dist[v];
                u = v;
            }
        }

        if (u == -1) break;

        sptSet[u] = true;

        for (v = 0; v < N; v++) {
            if (!sptSet[v] && graph[u][v] && dist[u] != INT_MAX && dist[u] + graph[u][v] < dist[v]) {
                dist[v] = dist[u] + graph[u][v];
            }
        }
    }

    delete[] sptSet;
}
