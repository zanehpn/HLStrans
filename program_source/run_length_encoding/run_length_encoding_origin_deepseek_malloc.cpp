#define MAX_SIZE 1024

void run_length_encoding(int input[MAX_SIZE], int output[MAX_SIZE][2], int &output_size) {
    int* in_dyn = new int[MAX_SIZE];
    for (int i = 0; i < MAX_SIZE; ++i) {
        in_dyn[i] = input[i];
    }

    int (*out_dyn)[2] = new int[MAX_SIZE][2];

    int count = 1;
    int out_index = 0;

    for (int i = 1; i < MAX_SIZE; ++i) {
        if (in_dyn[i] == in_dyn[i - 1]) {
            ++count;
        } else {
            out_dyn[out_index][0] = in_dyn[i - 1];
            out_dyn[out_index][1] = count;
            ++out_index;
            count = 1;
        }
    }

    out_dyn[out_index][0] = in_dyn[MAX_SIZE - 1];
    out_dyn[out_index][1] = count;
    ++out_index;

    for (int i = 0; i < out_index; ++i) {
        output[i][0] = out_dyn[i][0];
        output[i][1] = out_dyn[i][1];
    }

    output_size = out_index;

    delete[] out_dyn;
    delete[] in_dyn;
}
