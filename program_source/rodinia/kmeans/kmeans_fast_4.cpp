#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#define FLT_MAX 3.40282347e+38
#define NPOINTS (819200/2)
#define NFEATURES 34
#define NCLUSTERS 5
#define TILE_SIZE 4096
const int WIDTH_FACTOR = 16;
const int NUM_TILES = NPOINTS/TILE_SIZE;
extern"C"{
void load_local_cluster(float local_clusters[NCLUSTERS * NFEATURES], float clusters[NCLUSTERS * NFEATURES])
{
L1:	for (int i(0); i<NCLUSTERS; ++i){
L2:		for (int j(0); j<NFEATURES; ++j){
			local_clusters[i*NFEATURES+j] = clusters[i*NFEATURES+j];
		}
	}
}

void load_local_feature(int flag, float local_feature[TILE_SIZE * NFEATURES],
		float feature[NPOINTS * NFEATURES], int tile_idx)
{
	if (flag){
L3:	for (int i(0); i<TILE_SIZE; ++i){
L4:		for (int j(0); j<NFEATURES; ++j){
			local_feature[i*NFEATURES+j] = feature[(tile_idx*TILE_SIZE+i)*NFEATURES+j];
		}
	}
	}
}

void compute_local_membership(int flag, float local_feature[TILE_SIZE * NFEATURES],
		float local_clusters[NCLUSTERS * NFEATURES],int local_membership[TILE_SIZE])
{
	if (flag){
L5:    for (int i = 0; i < TILE_SIZE; i++) {
    	float min_dist = FLT_MAX;
        int index = 0;

        /* find the cluster center id with min distance to pt */
L6:        MIN: for (int j = 0; j < NCLUSTERS; j++) {
        	float dist = 0.0;

L7:            DIST: for (int k = 0; k < NFEATURES; k++) {
                float diff = local_feature[NFEATURES * i + k] - local_clusters[NFEATURES * j + k];
                dist += diff * diff;
            }

            if (dist < min_dist) {
                min_dist = dist;
                index = j;
            }
        }

        /* assign the membership to object i */
        local_membership[i] = index;
    }
	}
}

void store_local_membership(int flag, int local_membership[TILE_SIZE], int membership[NPOINTS], int tile_idx)
{
	if (flag){
L8:	for (int i(0); i<TILE_SIZE; ++i){
		membership[tile_idx*TILE_SIZE+i] = local_membership[i];
	}
	}
}

void kmeans(float  *feature, /* [npoints][nfeatures] */
              float  *clusters, /* [n_clusters][n_features] */
			  int *membership)
{
#pragma HLS INTERFACE m_axi port=feature offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=membership offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=clusters offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=feature bundle=control
#pragma HLS INTERFACE s_axilite port=membership bundle=control
#pragma HLS INTERFACE s_axilite port=clusters bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

L9:    int local_membership_0[TILE_SIZE];
L10:    float local_feature_0[TILE_SIZE * NFEATURES];

L11:    int local_membership_1[TILE_SIZE];
L12:    float local_feature_1[TILE_SIZE * NFEATURES];

L13:    int local_membership_2[TILE_SIZE];
L14:    float local_feature_2[TILE_SIZE * NFEATURES];

L15:    float local_clusters[NCLUSTERS * NFEATURES];

    load_local_cluster(local_clusters, clusters);

L16:    for (int i=0; i<NUM_TILES+2; ++i)
    {
        int load_flag = (i >= 0) && (i < NUM_TILES);
        int compute_flag = (i >= 1) && (i < NUM_TILES+1);
        int store_flag = (i >= 2) && (i < NUM_TILES+2);

        if (i % 3 == 0){
	    	load_local_feature(load_flag, local_feature_0, feature, i);
	    	compute_local_membership(compute_flag, local_feature_2, local_clusters, local_membership_2);
	        store_local_membership(store_flag, local_membership_1, membership, i-2);
        }
        else if (i % 3 == 1){
	    	load_local_feature(load_flag, local_feature_1, feature, i);
	    	compute_local_membership(compute_flag, local_feature_0, local_clusters, local_membership_0);
	        store_local_membership(store_flag, local_membership_2, membership, i-2);
        }
        else{
	    	load_local_feature(load_flag, local_feature_2, feature, i);
	    	compute_local_membership(compute_flag, local_feature_1, local_clusters, local_membership_1);
	        store_local_membership(store_flag, local_membership_0, membership, i-2);
        }


    }
}

}