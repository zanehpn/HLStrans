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
extern "C"{
void workload(float  *feature, /* [npoints][nfeatures] */
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

L1:	UPDATE_MEMBER: for (int i = 0; i < NPOINTS; i++) {
		float min_dist = FLT_MAX;
		int index = 0;

		/* find the cluster center id with min distance to pt */
L2:		MIN: for (int j = 0; j < NCLUSTERS; j++) {
			float dist = 0.0;

L3:			DIST: for (int k = 0; k < NFEATURES; k++) {
				float diff = feature[NFEATURES * i + k] - clusters[NFEATURES * j + k];
				dist += diff * diff;
			}
			if (dist < min_dist) {
				min_dist = dist;
				index = j;
			}
		}
		/* assign the membership to object i */
		membership[i] = index;
	}
}
}