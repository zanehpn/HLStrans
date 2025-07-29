#include "ap_fixed.h"
#include "ap_int.h"

#define BATCH_SIZE_1 262144
#define INTERNAL_BATCH_SIZE 4096
#define INTERNAL_BATCHES 64

#define DEC_BITS 6
#define INT_BITS 13

typedef ap_fixed<INT_BITS + DEC_BITS, INT_BITS, AP_RND> DTYPE;

#define WIDTH 256
#define FLOAT_BITS (sizeof(float) * 8)
#define FLOATS_PER_ELEMENT (WIDTH / FLOAT_BITS)

typedef ap_uint<WIDTH> INTERFACE_WIDTH;

typedef union
{
	int raw_val;
	float float_val;
} raw_float;

extern "C"{

	void kalman_filter(INTERFACE_WIDTH in[BATCH_SIZE_1 / FLOATS_PER_ELEMENT], INTERFACE_WIDTH out[BATCH_SIZE_1 / FLOATS_PER_ELEMENT]) {
		#pragma HLS INTERFACE m_axi port=in bundle=gmem0
		#pragma HLS INTERFACE m_axi port=out bundle=gmem1
		#pragma HLS INTERFACE s_axilite port=return bundle=control

		static DTYPE in_local[INTERNAL_BATCH_SIZE * INTERNAL_BATCHES];
		#pragma HLS ARRAY_PARTITION variable=in_local complete dim=1
		static DTYPE out_local[INTERNAL_BATCH_SIZE * INTERNAL_BATCHES];
		#pragma HLS ARRAY_PARTITION variable=out_local complete dim=1

		static DTYPE u_hat_arr[INTERNAL_BATCHES];
		#pragma HLS ARRAY_PARTITION variable=u_hat_arr complete dim=1
		static DTYPE p_arr_1[INTERNAL_BATCHES];
		#pragma HLS ARRAY_PARTITION variable=p_arr_1 complete dim=1
		static DTYPE k_arr[INTERNAL_BATCHES];
		#pragma HLS ARRAY_PARTITION variable=k_arr complete dim=1
		static DTYPE calc_temp_arr[INTERNAL_BATCHES];
		#pragma HLS ARRAY_PARTITION variable=calc_temp_arr complete dim=1

		INTERFACE_WIDTH temp;
		int counter = 0;

		// Stream input data into internal buffer
		READ_INPUT: for(int i = 0; i < BATCH_SIZE_1 / FLOATS_PER_ELEMENT; i++) {
			#pragma HLS PIPELINE II=1
			temp = in[i];
			for(int j = 0; j < FLOATS_PER_ELEMENT; j++) {
				raw_float t;
				t.raw_val = temp.range((j + 1) * FLOAT_BITS - 1, j * FLOAT_BITS);
				in_local[counter++] = (DTYPE)t.float_val;
			}
		}

		// Initialize Kalman filter parameters
		for (int i = 0; i < INTERNAL_BATCHES; i++) {
			#pragma HLS UNROLL
			u_hat_arr[i] = in_local[i * INTERNAL_BATCH_SIZE];
			p_arr_1[i] = 0.5;
			out_local[i * INTERNAL_BATCH_SIZE] = u_hat_arr[i];
		}

		// Kalman filter iterations
		KALMAN_LOOP_T: for (int t = 1; t < INTERNAL_BATCH_SIZE; t++) {
			#pragma HLS LOOP_TRIPCOUNT min=4095 max=4095
			KALMAN_LOOP_I: for (int i = 0; i < INTERNAL_BATCHES; i++) {
				#pragma HLS UNROLL factor=4
				calc_temp_arr[i] = p_arr_1[i] + (DTYPE)0.01;
				k_arr[i] = calc_temp_arr[i] / (p_arr_1[i] + (DTYPE)1.01);
				u_hat_arr[i] = u_hat_arr[i] + k_arr[i] * (in_local[i * INTERNAL_BATCH_SIZE + t] - u_hat_arr[i]);
				p_arr_1[i] = ((DTYPE)1 - k_arr[i]) * calc_temp_arr[i];
				out_local[i * INTERNAL_BATCH_SIZE + t] = u_hat_arr[i];
			}
		}

		// Stream output data back to global memory
		counter = 0;
		WRITE_OUTPUT: for(int i = 0; i < BATCH_SIZE_1 / FLOATS_PER_ELEMENT; i++) {
			#pragma HLS PIPELINE II=1
			temp = 0;
			for(int j = 0; j < FLOATS_PER_ELEMENT; j++) {
				raw_float t;
				t.float_val = (float)out_local[counter++];
				temp.range((j + 1) * FLOAT_BITS - 1, j * FLOAT_BITS) = t.raw_val;
			}
			out[i] = temp;
		}
	}
}