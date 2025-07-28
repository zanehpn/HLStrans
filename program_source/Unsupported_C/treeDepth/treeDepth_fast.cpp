#define MAX_NODES 128
typedef struct { int val; int l, r; } NodeSlot;

NodeSlot nodes[MAX_NODES];
int free_list_head;  

int treeDepth(int root_idx) {
  #pragma HLS PIPELINE II=1
  int stack[MAX_NODES];
  #pragma HLS ARRAY_PARTITION variable=stack complete
  int sp = 0, max_d = 0;

  stack[sp++] = root_idx;
  int depth[MAX_NODES] = {0};
  while (sp) {
    #pragma HLS LOOP_TRIPCOUNT max=MAX_NODES
    int idx = stack[--sp];
    int d   = depth[idx] + 1;
    if (d > max_d) max_d = d;
    int l = nodes[idx].l, r = nodes[idx].r;
    if (l >= 0) { depth[l] = d; stack[sp++] = l; }
    if (r >= 0) { depth[r] = d; stack[sp++] = r; }
  }
  return max_d;
}
