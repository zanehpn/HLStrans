typedef int dio_t;

struct AccHolder {
    dio_t* p;
    AccHolder() : p(new dio_t(0)) {}
    ~AccHolder() { delete p; }
};

void pointer_basic(dio_t* d) {
    static AccHolder holder;
    *holder.p += *d;
    *d = *holder.p;
}
