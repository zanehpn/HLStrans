// dijkstra_hls.cpp
#include <stdint.h>
#define MAXV 256
#define MAXE 1024

typedef struct { int v, w, next; } Edge;
void dijkstra(int head[MAXV], Edge edges[MAXE],
                  int dist[MAXV], int src) {
    #pragma HLS INTERFACE m_axi port=head  offset=slave bundle=gmem0
    #pragma HLS INTERFACE m_axi port=edges offset=slave bundle=gmem1
    #pragma HLS INTERFACE m_axi port=dist  offset=slave bundle=gmem2
    #pragma HLS INTERFACE s_axilite port=src   bundle=ctrl
    #pragma HLS INTERFACE s_axilite port=return bundle=ctrl

    const int INF = 0x3fffffff;
    for (int i = 0; i < MAXV; ++i) { 
      #pragma HLS PIPELINE II=1
        dist[i] = INF;
    }
    dist[src] = 0;

    
    int heap[MAXV+1], hsz = 0;
    #pragma HLS ARRAY_PARTITION variable=heap complete

    // push src
    heap[++hsz] = src;

    // pop/push helper lambdas inlined
    auto heapify_up = [&](int i) {
      while (i>1 && dist[heap[i]]<dist[heap[i>>1]]) {
        int t=heap[i]; heap[i]=heap[i>>1]; heap[i>>1]=t; i>>=1;
      }
    };
    auto heapify_down = [&]() {
      int i=1;
      while ((i<<1)<=hsz) {
        int c=i<<1;
        if (c<hsz && dist[heap[c+1]]<dist[heap[c]]) ++c;
        if (dist[heap[c]]<dist[heap[i]]) {
          int t=heap[i]; heap[i]=heap[c]; heap[c]=t; i=c;
        } else break;
      }
    };

    while (hsz) {
      #pragma HLS PIPELINE II=1
      int u = heap[1];
      heap[1] = heap[hsz--];
      heapify_down();

      for (int e = head[u]; e != -1; e = edges[e].next) {
        int v = edges[e].v, w = edges[e].w;
        if (dist[u] + w < dist[v]) {
          dist[v] = dist[u] + w;
          heap[++hsz] = v;
          heapify_up(hsz);
        }
      }
    }
}
