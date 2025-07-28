#include <string.h>
#define OFFSET 1  
#define DIM 200
#define BATCH_SIZE 1024
#define MAX_WORK_MEM_SIZE 128
#define BUF_SIZE 256

extern "C" {

void load(int flag, int i, float* coord, float* weight, float* cost, int* assign,
			float* buffer_coord, float* buffer_weight, float* buffer_cost, int* buffer_assign){
	if(flag){
		memcpy(buffer_coord, coord + i * DIM, BUF_SIZE * DIM * sizeof(float));
		memcpy(buffer_weight, weight + i, BUF_SIZE * sizeof(float));
		memcpy(buffer_cost, cost + i, BUF_SIZE * sizeof(float));
		memcpy(buffer_assign, assign + i, BUF_SIZE * sizeof(int));
	}
}

//Input of compute should be the buffer 
void compute(int flag, int num, int k, float* coord, float* weight, float* target, float* cost, int * assign, 
		int* center_table, char* switch_membership, float* cost_of_opening_x, float* work_mem, float* x_cost){
	if(flag){
L1:		pre:for(int i = 0; i < BUF_SIZE; i++){
			#pragma HLS DEPENDENCE variable=x_cost inter false 
			float sum = 0;
L2:			pre_inner:for(int j = 0; j < DIM; j++){
				float a = coord[i * DIM + j] - target[j];
				sum += a * a;
			}
			x_cost[i] = sum * weight[i];
		}

L3:		after:for(int i = 0; i < BUF_SIZE; i++){
			float current_cost = x_cost[i] - cost[i];
			int local_center_index = center_table[assign[i]];
			float work_mem_cost = work_mem[local_center_index] - current_cost;		    
			if(current_cost < 0){
				switch_membership[k + i] = 1;
				cost_of_opening_x[0] += current_cost;
			} else{
				work_mem[local_center_index] = work_mem_cost;
			}
		}
	}
}

void store(int num, int numcenter, float* work_mem, char* switch_membership, float* cost_of_opening_x,
			float* buffer_work_mem, char* buffer_switch_membership, float* buffer_cost_of_opening_x){
	memcpy(work_mem, buffer_work_mem, BATCH_SIZE * sizeof(float));
	memcpy(switch_membership, buffer_switch_membership, BATCH_SIZE * sizeof(char));
	cost_of_opening_x[0] = buffer_cost_of_opening_x[0];
}

void streamcluster(    
    float* coord,                      
    float* weight,                      
    float* cost, 
    float* target,
    int* assign,
    int* center_table,
    char* switch_membership,
    float* work_mem,
    int num,
    float* cost_of_opening_x,
    int numcenter            
)
{
    #pragma HLS INTERFACE m_axi port=coord offset=slave bundle=gmemf
    #pragma HLS INTERFACE m_axi port=weight offset=slave bundle=gmemf
    #pragma HLS INTERFACE m_axi port=cost offset=slave bundle=gmemf
    #pragma HLS INTERFACE m_axi port=target offset=slave bundle=gmemf
    #pragma HLS INTERFACE m_axi port=assign offset=slave bundle=gmemi
    #pragma HLS INTERFACE m_axi port=center_table offset=slave bundle=gmemi
    #pragma HLS INTERFACE m_axi port=switch_membership offset=slave bundle=gmemc
    #pragma HLS INTERFACE m_axi port=work_mem offset=slave bundle=gmemf
    #pragma HLS INTERFACE m_axi port=cost_of_opening_x offset=slave bundle=gmemf

    #pragma HLS INTERFACE s_axilite port=coord bundle=control
    #pragma HLS INTERFACE s_axilite port=weight bundle=control
    #pragma HLS INTERFACE s_axilite port=cost bundle=control
    #pragma HLS INTERFACE s_axilite port=target bundle=control
    #pragma HLS INTERFACE s_axilite port=assign bundle=control
    #pragma HLS INTERFACE s_axilite port=center_table bundle=control
    #pragma HLS INTERFACE s_axilite port=switch_membership bundle=control
    #pragma HLS INTERFACE s_axilite port=work_mem bundle=control
    #pragma HLS INTERFACE s_axilite port=num bundle=control
    #pragma HLS INTERFACE s_axilite port=cost_of_opening_x bundle=control
    #pragma HLS INTERFACE s_axilite port=numcenter bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

L4:	float buffer_target[DIM];
L5:	int buffer_center_table[BATCH_SIZE];
L6:	float buffer_work_mem[BATCH_SIZE];
L7:	char buffer_switch_membership[BATCH_SIZE];
L8:	float buffer_cost_of_opening_x[1];
	buffer_cost_of_opening_x[0] = cost_of_opening_x[0];

L9:	float x_cost[BUF_SIZE];

L10:	int buffer_assign_1[BUF_SIZE];
L11:	float buffer_cost_1[BUF_SIZE];
L12:	float buffer_weight_1[BUF_SIZE];
L13:	float buffer_coord_1[BUF_SIZE * DIM];

L14:	int buffer_assign_2[BUF_SIZE];
L15:	float buffer_cost_2[BUF_SIZE];
L16:	float buffer_weight_2[BUF_SIZE];
L17:	float buffer_coord_2[BUF_SIZE * DIM];
	// float x_cost_2[BUF_SIZE];

	memcpy(buffer_work_mem, work_mem, BATCH_SIZE * sizeof(float));
	memcpy(buffer_switch_membership, switch_membership, BATCH_SIZE * sizeof(char));
	
	memcpy(buffer_target, target, DIM * sizeof(float));
	memcpy(buffer_center_table, center_table, BATCH_SIZE * sizeof(int));

L18:	process:for(int i = 0; i < BATCH_SIZE + BUF_SIZE; i += BUF_SIZE){
		int load_flag = i >= 0 && i < BATCH_SIZE;
		int compute_flag = i >= BUF_SIZE && i <= BATCH_SIZE + BUF_SIZE;

		if((i/BUF_SIZE) % 2 == 0){
			load(load_flag, i, coord, weight, cost, assign, buffer_coord_1, buffer_weight_1, buffer_cost_1, buffer_assign_1);
			compute(compute_flag, num, i - BUF_SIZE, buffer_coord_2, buffer_weight_2, buffer_target, buffer_cost_2, buffer_assign_2, 
					buffer_center_table, buffer_switch_membership, buffer_cost_of_opening_x, buffer_work_mem, x_cost);
		} else{
			load(load_flag, i, coord, weight, cost, assign, buffer_coord_2, buffer_weight_2, buffer_cost_2, buffer_assign_2);
			compute(compute_flag, num, i - BUF_SIZE, buffer_coord_1, buffer_weight_1, buffer_target, buffer_cost_1, buffer_assign_1, 
					buffer_center_table, buffer_switch_membership, buffer_cost_of_opening_x, buffer_work_mem, x_cost);
		}

	}

	store(num, numcenter, work_mem, switch_membership, cost_of_opening_x,
		buffer_work_mem, buffer_switch_membership, buffer_cost_of_opening_x);

	return;
}
}
