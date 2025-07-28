#include <hls_math.h>
#include <ap_int.h>
#include <hls_stream.h>
#include <hls_math.h>

#define MAX_VERTICES 1024
#define MAX_ITER     100
#define EPSILON      1e-6f


void pagerank(
    int   *rpao,           // CSR row pointers, size vertex_num+1
    int   *ciao,           // CSR column indices, size edges
    float       *pr,             // 输入/输出 PageRank 值，size vertex_num
    int    vertex_num,
    float  damping_factor
) {
#pragma HLS INTERFACE m_axi      port=rpao    offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi      port=ciao    offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi      port=pr      offset=slave bundle=gmem2
#pragma HLS INTERFACE s_axilite  port=vertex_num      bundle=control
#pragma HLS INTERFACE s_axilite  port=damping_factor  bundle=control
#pragma HLS INTERFACE s_axilite  port=return          bundle=control

    // 静态局部数组，替代动态分配
    float new_pr_local[MAX_VERTICES];
#pragma HLS ARRAY_PARTITION variable=new_pr_local cyclic factor=16

    // 主迭代
    iter_loop: for (int iter = 0; iter < MAX_ITER; iter++) {
        float diff = 0.0f;

        // 重置 new_pr_local
        reset_loop: for (int i = 0; i < vertex_num; i++) {
#pragma HLS PIPELINE II=1
            new_pr_local[i] = 0.0f;
        }

        // 计算每个节点对出度邻居的贡献
        contrib_loop: for (int i = 0; i < vertex_num; i++) {
#pragma HLS PIPELINE II=1
            int  start      = rpao[i];
            int  end        = rpao[i+1];
            float pr_i      = pr[i];
            int  out_degree = end - start;

            if (out_degree > 0) {
                float share = pr_i / out_degree;
            out_iter: for (int eid = start; eid < end; eid++) {
#pragma HLS PIPELINE II=1
                    int  nb = ciao[eid];
                    new_pr_local[nb] += share;
                }
            } else {
                // Dangling 节点：均匀分配
            dangling_iter: for (int k = 0; k < vertex_num; k++) {
#pragma HLS PIPELINE II=1
                    new_pr_local[k] += pr_i / vertex_num;
                }
            }
        }

        update_loop: for (int i = 0; i < vertex_num; i++) {
#pragma HLS PIPELINE II=1
            float v = (1.0f - damping_factor) / vertex_num
                      + damping_factor * new_pr_local[i];
            diff += std::fabs(v - pr[i]);
            pr[i] = v;
        }

        if (diff < EPSILON) break;
    }
}

