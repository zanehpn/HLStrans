#define N 16

void matinv(float A[N][N], float invA[N][N]) {
#pragma HLS INTERFACE m_axi port=A  offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=invA offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=A     bundle=control
#pragma HLS INTERFACE s_axilite port=invA  bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    float aug[N][2*N];
    for(int i=0;i<N;i++){
        for(int j=0;j<N;j++){
#pragma HLS PIPELINE II=1
            aug[i][j]   = A[i][j];
            aug[i][j+N] = (i==j)?1.0f:0.0f;
        }
    }
    for(int k=0;k<N;k++){
        float pivot = aug[k][k];
        for(int j=0;j<2*N;j++){
#pragma HLS PIPELINE
            aug[k][j] /= pivot;
        }
        for(int i=0;i<N;i++){
            if(i!=k){
                float factor = aug[i][k];
                for(int j=0;j<2*N;j++){
#pragma HLS PIPELINE
                    aug[i][j] -= factor * aug[k][j];
                }
            }
        }
    }
    for(int i=0;i<N;i++){
        for(int j=0;j<N;j++){
#pragma HLS PIPELINE
            invA[i][j] = aug[i][j+N];
        }
    }
}