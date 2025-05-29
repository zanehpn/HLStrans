#include <hls_stream.h>
#include <ap_fixed.h>
#include <cmath>
#define gamma 8
#define b 0
#define N_FEATURES 1248
#define N_SUP_VECT 18
typedef ap_fixed<32, 16> fixed_point;

// Lookup table for exp(-gamma * x)
const fixed_point exp_table[100] = {
    // Populate this table with values of exp(-gamma * x) for x from 0 to 99
};

void svm_optimized(hls::stream<fixed_point>& input_stream, hls::stream<int>& output_stream)
{
    const fixed_point sv_coeff[N_FEATURES] = {1, 2, 2, 1};
    const fixed_point sup_vectors[N_SUP_VECT][N_FEATURES] = {{1, 5, 2.2, 1.1}, {1, 2, 4, 1.1}, {1, 2.1, 2.2, 1.1}, {1, 8, 2.2, 1.1}};
    
    fixed_point diff;
    fixed_point norma;
    int sum = 0;
    for (int i = 0; i < N_FEATURES; i++)
    {
        norma = 0;
        for (int j = 0; j < N_SUP_VECT; j++)
        {
            diff = input_stream.read() - sup_vectors[j][i];
            diff = diff * diff;
            norma = norma + diff;
        }
        // Use lookup table for exp(-gamma * norma)
        int index = static_cast<int>(norma * 100); // Assuming norma is between 0 and 1
        sum = sum + (exp_table[index] * sv_coeff[i]);
    }
    sum = sum - b;
    output_stream.write(sum);
}