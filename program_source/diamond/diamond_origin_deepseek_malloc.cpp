// MALLOC_VARIANT

#define N 100
typedef unsigned char data_t;

// Top function
void diamond(data_t vecIn[N], data_t vecOut[N]);

// Sub functions
void funcA(data_t f1In[N], data_t f1Out[N], data_t f1bisOut[N]);
void funcB(data_t f2In[N], data_t f2Out[N]);
void funcC(data_t f3In[N], data_t f3Out[N]);
void funcD(data_t f4In[N], data_t f4bisIn[N], data_t f4Out[N]);

void diamond(data_t vecIn[N], data_t vecOut[N]) {
    data_t* c1 = new data_t[N];
    data_t* c2 = new data_t[N];
    data_t* c3 = new data_t[N];
    data_t* c4 = new data_t[N];

    funcA(vecIn, c1, c2);
    funcB(c1, c3);
    funcC(c2, c4);
    funcD(c3, c4, vecOut);

    delete[] c1;
    delete[] c2;
    delete[] c3;
    delete[] c4;
}

void funcA(data_t* in, data_t* out1, data_t* out2) {
    for (int i = 0; i < N; i++) {
        data_t t = in[i] * 3;
        out1[i] = t;
        out2[i] = t;
    }
}

void funcB(data_t* in, data_t* out) {
    for (int i = 0; i < N; i++) {
        out[i] = in[i] + 25;
    }
}

void funcC(data_t* in, data_t* out) {
    for (data_t i = 0; i < N; i++) {
        out[i] = in[i] * 2;
    }
}

void funcD(data_t* in1, data_t* in2, data_t* out) {
    for (int i = 0; i < N; i++) {
        out[i] = in1[i] + in2[i] * 2;
    }
}
