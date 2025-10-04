// MALLOC_VARIANT
#define SIZE 1024

void audio_mixing(float input1[SIZE], float input2[SIZE], float output[SIZE], float volume1, float volume2) {
    float* in1 = new float[SIZE];
    float* in2 = new float[SIZE];
    float* out = new float[SIZE];

    for (int i = 0; i < SIZE; ++i) {
        in1[i] = input1[i];
        in2[i] = input2[i];
    }

    for (int i = 0; i < SIZE; ++i) {
        out[i] = (in1[i] * volume1) + (in2[i] * volume2);
    }

    for (int i = 0; i < SIZE; ++i) {
        output[i] = out[i];
    }

    delete[] in1;
    delete[] in2;
    delete[] out;
}
