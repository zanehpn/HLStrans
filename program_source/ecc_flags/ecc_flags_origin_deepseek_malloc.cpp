// MALLOC_VARIANT

#define N 10

using din_t = int;

void ecc_flags(din_t in1[N], din_t in2[N], const din_t Iter, din_t output[N]);

void sfunc2(din_t vec1[N], const din_t sIter, din_t ovec[N]) {
    for (int i = 0; i < N; ++i) {
        ovec[i] = vec1[i] / sIter;
    }
}

void sfunc1(const din_t cIter, din_t a[N], din_t b[N], din_t res[N]) {
    int i;
    din_t* res1 = new din_t[N];

    for (i = 0; i < N; i++) {
        res1[i] = b[i] + a[i];
    }
    sfunc2(res1, cIter, res);

    delete[] res1;
}

void sfunc3(din_t inrun[N], din_t oval[N]) {
    int i;
    din_t calc = 0;
    for (i = 0; i < N; ++i) {
        calc = (inrun[i] * inrun[i]) / (i + 1);
        oval[i] = calc;
    }
}

void ecc_flags(din_t in1[N], din_t in2[N], const din_t Iter, din_t output[N]) {
    din_t* auxbuffer1 = new din_t[N];

    sfunc1(Iter, in1, in2, auxbuffer1);
    sfunc3(auxbuffer1, output);

    delete[] auxbuffer1;
    return;
}
