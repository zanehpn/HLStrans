#define V      512
#define E      2048

struct Edge { int to, next; };
void countCC(int head[V], Edge edges[E],
             bool vis[V], int &cc)
{
    #pragma HLS INTERFACE m_axi port=head  offset=slave bundle=gmem0
    #pragma HLS INTERFACE m_axi port=edges offset=slave bundle=gmem1
    #pragma HLS INTERFACE m_axi port=vis   offset=slave bundle=gmem2
    #pragma HLS INTERFACE s_axilite port=cc    bundle=ctrl
    #pragma HLS INTERFACE s_axilite port=return bundle=ctrl

    static int queue[V];
    int front=0, back=0;
    cc = 0;

    for (int i = 0; i < V; ++i) {
        #pragma HLS PIPELINE II=1
        if (!vis[i]) {
            // BFS
            queue[back++] = i;
            vis[i] = true;
            while (front < back) {
                #pragma HLS PIPELINE II=1
                int u = queue[front++];
                for (int e = head[u]; e != -1; e = edges[e].next) {
                    int v = edges[e].to;
                    if (!vis[v]) {
                        vis[v] = true;
                        queue[back++] = v;
                    }
                }
            }
            cc++;
        }
    }
}
