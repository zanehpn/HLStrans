#include <cstdio>

void cpp_template(int inp, int* out);

template <int K>
void func_with_static(int inp, int* dout) {
    static int acc = 0;
    acc += inp;
    *dout = acc;
}

void cpp_template(int inp, int* out) {
    int* outs = new int[5];

    func_with_static<1>(inp, &outs[0]);
    func_with_static<2>(inp, &outs[1]);
    func_with_static<3>(inp, &outs[2]);
    func_with_static<4>(inp, &outs[3]);
    func_with_static<5>(inp, &outs[4]);

    *out += outs[0] + outs[1] + outs[2] + outs[3] + outs[4];

    delete[] outs;
}
