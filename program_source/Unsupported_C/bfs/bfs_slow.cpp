#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

typedef struct QNode {
    int vertex;
    struct QNode *next;
} QNode;

typedef struct Queue {
    QNode *front, *rear;
} Queue;

Queue* createQueue() {
    Queue *q = (Queue*)malloc(sizeof(Queue));
    q->front = q->rear = NULL;
    return q;
}

void enqueue(Queue *q, int v) {
    QNode *node = (QNode*)malloc(sizeof(QNode));
    node->vertex = v;
    node->next = NULL;
    if (q->rear == NULL) {
        q->front = q->rear = node;
    } else {
        q->rear->next = node;
        q->rear = node;
    }
}

int dequeue(Queue *q) {
    if (q->front == NULL) return -1;
    QNode *tmp = q->front;
    int v = tmp->vertex;
    q->front = q->front->next;
    if (q->front == NULL) q->rear = NULL;
    free(tmp);
    return v;
}

void bfs(int **adj, int *deg, int N, int src) {
    int *visited = (int*)calloc(N, sizeof(int));
    Queue *q = createQueue();

    visited[src] = 1;
    enqueue(q, src);

    while (q->front != NULL) {
        int u = dequeue(q);
        printf("%d ", u);
        // 遍历邻接表
        for (int i = 0; i < deg[u]; i++) {
            int v = adj[u][i];
            if (!visited[v]) {
                visited[v] = 1;
                enqueue(q, v);
            }
        }
    }
    free(visited);
    free(q);
}
