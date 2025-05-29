#include <ap_int.h>
#include <hls_stream.h>

#define MAX_VERTICES 1024
#define MAX_EDGES    8192


extern "C" {
void bfs(
    const int adj_ptr[MAX_VERTICES+1],  // CSR row 指针
    const int adj_list[MAX_EDGES],      // CSR 列表
    int       visited[MAX_VERTICES],    // 访问标记数组
    int       queue_buf[MAX_VERTICES],  // 静态队列缓冲区
    int      *visit_order,              // 输出访问顺序
    const int  vertex_num,
    int       *order_len
) {
#pragma HLS INTERFACE m_axi      port=adj_ptr     offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi      port=adj_list    offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi      port=visited     offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi      port=queue_buf   offset=slave bundle=gmem3
#pragma HLS INTERFACE m_axi      port=visit_order offset=slave bundle=gmem4
#pragma HLS INTERFACE s_axilite  port=vertex_num   bundle=control
#pragma HLS INTERFACE s_axilite  port=order_len    bundle=control
#pragma HLS INTERFACE s_axilite  port=return       bundle=control

    // 初始化
    init_loop: for (int i = 0; i < vertex_num; i++) {
    #pragma HLS PIPELINE II=1
        visited[i] = 0;
    }
    int head = 0, tail = 0;
    int idx = 0;

    // 从源节点 0 开始（可参数化）
    visited[0] = 1;
    queue_buf[tail++] = 0;

    // 主 BFS 循环
    bfs_loop: while (head != tail) {
    #pragma HLS PIPELINE II=1
        int u = queue_buf[head++];
        visit_order[idx++] = u;

        int start = adj_ptr[u];
        int end   = adj_ptr[u+1];
    relax_loop: for (int e = start; e < end; e++) {
    #pragma HLS PIPELINE II=1
            int v = adj_list[e];
            if (!visited[v]) {
                visited[v] = 1;
                queue_buf[tail++] = v;
            }
        }
    }

    *order_len = idx;
}
}  // extern "C"
