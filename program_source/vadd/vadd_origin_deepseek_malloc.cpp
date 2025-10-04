#define DATA_SIZE 2048
#define INCR_VALUE 10
#define BURSTBUFFERSIZE 256

void vadd(int* a, int size, int inc_value) {
    int* burstbuffer = new int[BURSTBUFFERSIZE];

    for (int i = 0; i < size; i += BURSTBUFFERSIZE) {
        int chunk_size = BURSTBUFFERSIZE;
        if ((i + BURSTBUFFERSIZE) > size) chunk_size = size - i;

        for (int j = 0; j < chunk_size; j++) {
            burstbuffer[j] = a[i + j];
        }

        for (int j = 0; j < chunk_size; j++) {
            burstbuffer[j] = burstbuffer[j] + inc_value;
            a[i + j] = burstbuffer[j];
        }
    }

    delete[] burstbuffer;
}
