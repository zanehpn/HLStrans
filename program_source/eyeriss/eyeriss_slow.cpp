
#include <iostream>
#include <hls_stream.h>
#include <string.h>

#define STRIDE 1
#define PADDING 0
#define IF_LENGTH 5
#define IF_WIDTH 5
#define WT_LENGTH 3
#define WT_WIDTH 3
#define OP_LENGTH 3
#define OP_WIDTH 3

#define PE_LENGTH 3
#define PE_BREADTH 3
#define SUM_BUFFER_SIZE 3
#define BUFFER_SIZE 3

#define active_cycles (PE_LENGTH + PE_BREADTH + (OP_WIDTH * 3))

using namespace std;

// Global state
typedef struct {
    int local_cycle_count;
    int psum_count;
    int psum_buffer_internal;
} PE;


// Buffers
static int PE_IFM_Buffer[PE_LENGTH*PE_BREADTH][BUFFER_SIZE];
static int PE_Wt_Buffer[PE_LENGTH*PE_BREADTH][BUFFER_SIZE];
static PE pes[PE_LENGTH][PE_BREADTH];

static int global_cycles;
static int count_test;

// Reset function
void reset() {
    memset(pes, 0, sizeof(pes));
    global_cycles = 0;
    count_test    = 0;
}

// Read DRAM into PE inputs (simplified)
void read_data_DRAM(int DRAM_ip_data[IF_LENGTH][IF_WIDTH],
                    int DRAM_Wt_data[WT_LENGTH][WT_WIDTH],
                    int horiz_in[PE_BREADTH],
                    int diag_in[PE_BREADTH][PE_LENGTH]) 
{
    global_cycles++;
    // For simplicity: feed diagonal and horizontal inputs directly
    for (int i = 0; i < PE_LENGTH; i++) {
        horiz_in[i] = DRAM_Wt_data[i][ (global_cycles-1) % WT_WIDTH ];
        diag_in[i][0] = DRAM_ip_data[i][ (global_cycles-1) % IF_WIDTH ];
        // you can fill diag_in for other PEs similarly
    }
}

// Single-cycle MAC and data movement for one PE
void process_PE(int i, int j,
                int horiz_in, int *horiz_out,
                int diag_in,  int *diag_out,
                int *psum_out)
{
    PE *pe = &pes[i][j];
    pe->local_cycle_count++;

    // Shift-register load
    if (pe->local_cycle_count <= BUFFER_SIZE) {
        PE_IFM_Buffer[i*PE_BREADTH+j][pe->local_cycle_count-1] = diag_in;
        PE_Wt_Buffer[i*PE_BREADTH+j][pe->local_cycle_count-1]  = horiz_in;
    }

    // MAC after warm-up
    if (pe->local_cycle_count > 1) {
        int idx = pe->psum_count;
        pe->psum_buffer_internal += 
            PE_IFM_Buffer[i*PE_BREADTH+j][idx] *
            PE_Wt_Buffer[i*PE_BREADTH+j][idx];
        pe->psum_count++;
    }

    // When buffer full, emit partial sum
    if (pe->psum_count == BUFFER_SIZE) {
        *psum_out = pe->psum_buffer_internal;
        pe->psum_buffer_internal = 0;
        pe->psum_count = 0;
    } else {
        *psum_out = 0;
    }

    // Pass data right/down for next cycle
    *horiz_out = (pe->local_cycle_count > 1) ? 
                 PE_Wt_Buffer[i*PE_BREADTH+j][pe->local_cycle_count-2] : 0;
    *diag_out  = (pe->local_cycle_count > 1) ? 
                 PE_IFM_Buffer[i*PE_BREADTH+j][pe->local_cycle_count-2] : 0;
}

// Accumulate sums from PEs into DRAM output
void write_data_DRAM(int DRAM_op_data[OP_LENGTH][OP_WIDTH],
                     int psum0, int psum1, int psum2)
{
    if (psum0) DRAM_op_data[0][count_test] = psum0;
    if (psum1) DRAM_op_data[1][count_test] = psum1;
    if (psum2) {
        DRAM_op_data[2][count_test] = psum2;
        count_test++;
    }
}

// Top-level convolution driver
void eyeriss(int DRAM_ip_data[IF_LENGTH][IF_WIDTH],
                 int DRAM_Wt_data[WT_LENGTH][WT_WIDTH],
                 int DRAM_op_data[OP_LENGTH][OP_WIDTH])
{
    reset();

    int horiz_pipe[PE_LENGTH][PE_BREADTH] = {0};
    int diag_pipe [PE_LENGTH][PE_BREADTH] = {0};
    int psum_pe   [PE_LENGTH][PE_BREADTH] = {0};

    for (int cycle = 0; cycle < active_cycles; cycle++) {
        // 1) Read new inputs from DRAM
        int new_horiz[PE_BREADTH];
        int new_diag[PE_BREADTH][PE_LENGTH];
        read_data_DRAM(DRAM_ip_data, DRAM_Wt_data, new_horiz, new_diag);

        // 2) Process each PE, row-major
        int next_horiz[PE_LENGTH][PE_BREADTH] = {0};
        int next_diag [PE_LENGTH][PE_BREADTH] = {0};
        int psum_out0=0, psum_out1=0, psum_out2=0;

        for (int i = 0; i < PE_LENGTH; i++) {
            for (int j = 0; j < PE_BREADTH; j++) {
                int horiz_in = (j==0 ? new_horiz[i] : horiz_pipe[i][j-1]);
                int diag_in  = (i==0 ? new_diag[i][j] : diag_pipe[i-1][j]);
                int psum_out = 0;

                process_PE(i, j,
                           horiz_in, &next_horiz[i][j],
                           diag_in,  &next_diag [i][j],
                           &psum_out);

                // capture PSUMs from first column PEs
                if (j==0) {
                    if      (i==0) psum_out0 = psum_out;
                    else if (i==1) psum_out1 = psum_out;
                    else if (i==2) psum_out2 = psum_out;
                }
            }
        }

        // 3) Write PSUMs back to DRAM
        write_data_DRAM(DRAM_op_data, psum_out0, psum_out1, psum_out2);

        // 4) Shift pipes for next cycle
        memcpy(horiz_pipe, next_horiz, sizeof(horiz_pipe));
        memcpy(diag_pipe,  next_diag,  sizeof(diag_pipe));
    }
}
