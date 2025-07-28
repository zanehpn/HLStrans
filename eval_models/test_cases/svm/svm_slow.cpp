#include <stdio.h>
#include <math.h>
#define gamma 8
#define b 0
#define N_FEATURES 1248
#define N_SUP_VECT 18

const float sv_coeff[N_FEATURES] = {1, 2, 2, 1};
const float sup_vectors[N_SUP_VECT][N_FEATURES] = {{1, 5, 2.2, 1.1}, {1, 2, 4, 1.1}, {1, 2.1, 2.2, 1.1}, {1, 8, 2.2, 1.1}};

int svm(float test_vector[N_SUP_VECT])
{
    float diff;
    float norma;
    int sum = 0;
    for (int i = 0; i < N_FEATURES; i++)
    {
        for (int j = 0; j < N_SUP_VECT; j++)
        {
            diff = test_vector[j] - sup_vectors[j][i];
            diff = diff * diff;
            norma = norma + diff;
        }
        sum = sum + (exp(-gamma * norma) * sv_coeff[i]);
        norma = 0;
    }
    sum = sum - b;
    return sum;
}