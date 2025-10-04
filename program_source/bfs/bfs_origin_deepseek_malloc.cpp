#include <cstdint>
#include <cstdlib>

#define N 1024

void bfs(int graph[N][N], int start_node, int distances[N]) {

    bool* visited = static_cast<bool*>(std::calloc(N, sizeof(bool)));
    int* queue = static_cast<int*>(std::malloc(N * sizeof(int)));
    int front = 0, rear = 0;

    for (int i = 0; i < N; i++) {
        distances[i] = -1;
    }

    visited[start_node] = true;
    distances[start_node] = 0;
    queue[rear++] = start_node;

    for (int i = 0; i < N; i++) {
        if (front == rear) break;
        int current = queue[front++];

        for (int j = 0; j < N; j++) {
            if (graph[current][j] != 0 && !visited[j]) {
                visited[j] = true;
                distances[j] = distances[current] + 1;
                queue[rear++] = j;
            }
        }
    }

    std::free(visited);
    std::free(queue);
}
