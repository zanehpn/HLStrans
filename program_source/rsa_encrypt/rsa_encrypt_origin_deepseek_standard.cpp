// ---- file: rsa_encrypt.cpp ----
#include <array>
#include <cstdint>

#define N 1024

struct BigUInt1024 {
    std::array<uint64_t, 16> v;

    BigUInt1024() {
        v.fill(0);
    }

    static BigUInt1024 from_uint64(uint64_t x) {
        BigUInt1024 r;
        r.v[0] = x;
        return r;
    }

    bool lsb() const {
        return (v[0] & 1ULL) != 0;
    }

    void shift_right1() {
        uint64_t carry = 0;
        for (int i = 15; i >= 0; --i) {
            uint64_t new_carry = (v[i] & 1ULL) ? (1ULL << 63) : 0ULL;
            v[i] = (v[i] >> 1) | carry;
            carry = new_carry;
        }
    }
};

static inline bool get_bit(const BigUInt1024& x, int bit_index) {
    int limb = bit_index / 64;
    int offset = bit_index % 64;
    return ((x.v[limb] >> offset) & 1ULL) != 0ULL;
}

using ExtBig = std::array<uint64_t, 17>;

static inline void add_to_ext(const BigUInt1024& a, const BigUInt1024& b, ExtBig& out) {
    uint64_t carry = 0;
    for (int i = 0; i < 16; ++i) {
        uint64_t s = a.v[i] + b.v[i];
        uint64_t c1 = (s < a.v[i]) ? 1ULL : 0ULL;
        uint64_t s2 = s + carry;
        uint64_t c2 = (s2 < s) ? 1ULL : 0ULL;
        out[i] = s2;
        carry = c1 | c2;
    }
    out[16] = carry;
}

static inline void add_small_to_ext(const BigUInt1024& a, uint64_t small, ExtBig& out) {
    uint64_t carry = 0;
    uint64_t s = a.v[0] + small;
    uint64_t c1 = (s < a.v[0]) ? 1ULL : 0ULL;
    out[0] = s;
    carry = c1;
    for (int i = 1; i < 16; ++i) {
        uint64_t t = a.v[i] + carry;
        uint64_t c2 = (t < a.v[i]) ? 1ULL : 0ULL;
        out[i] = t;
        carry = c2;
    }
    out[16] = carry;
}

static inline bool ext_ge_mod(const ExtBig& ext, const BigUInt1024& mod) {
    for (int i = 16; i >= 0; --i) {
        uint64_t a = ext[i];
        uint64_t b = (i == 16) ? 0ULL : mod.v[i];
        if (a > b) return true;
        if (a < b) return false;
    }
    return true; // equal
}

static inline void ext_sub_mod(ExtBig& ext, const BigUInt1024& mod) {
    uint64_t borrow = 0;
    for (int i = 0; i < 16; ++i) {
        uint64_t mi = mod.v[i];
        uint64_t subtrahend = mi + borrow;
        uint64_t b2 = (subtrahend < mi) ? 1ULL : 0ULL; // carry from add to detect overflow
        uint64_t xi = ext[i];
        uint64_t diff = xi - subtrahend;
        uint64_t new_borrow = ((xi < subtrahend) ? 1ULL : 0ULL);
        ext[i] = diff;
        borrow = (new_borrow | b2) ? 1ULL : 0ULL; // but since borrow is 0/1 and mi+borrow fits 65 bits, b2 only when mi==~0 && borrow==1
    }
    // Handle the 17th limb (which is 0 for mod)
    uint64_t xi = ext[16];
    uint64_t subtrahend = borrow; // since mod's 17th limb is 0
    uint64_t diff = xi - subtrahend;
    // No need to compute further borrow; assume ext >= mod so no underflow beyond this.
    ext[16] = diff;
}

static inline BigUInt1024 reduce_ext_to_big(const ExtBig& ext) {
    BigUInt1024 r;
    for (int i = 0; i < 16; ++i) r.v[i] = ext[i];
    return r;
}

static inline BigUInt1024 add_mod(const BigUInt1024& a, const BigUInt1024& b, const BigUInt1024& mod) {
    ExtBig ext{};
    add_to_ext(a, b, ext);
    if (ext_ge_mod(ext, mod)) {
        ext_sub_mod(ext, mod);
    }
    return reduce_ext_to_big(ext);
}

static inline BigUInt1024 add_mod_small(const BigUInt1024& a, uint64_t small, const BigUInt1024& mod) {
    ExtBig ext{};
    add_small_to_ext(a, small, ext);
    if (ext_ge_mod(ext, mod)) {
        ext_sub_mod(ext, mod);
    }
    return reduce_ext_to_big(ext);
}

static inline BigUInt1024 mod_reduce(const BigUInt1024& a, const BigUInt1024& mod) {
    BigUInt1024 r; // zero
    for (int i = 1023; i >= 0; --i) {
        r = add_mod(r, r, mod); // r = (r * 2) % mod
        if (get_bit(a, i)) {
            r = add_mod_small(r, 1ULL, mod);
        }
    }
    return r;
}

static inline BigUInt1024 modmul(const BigUInt1024& a, const BigUInt1024& b, const BigUInt1024& mod) {
    BigUInt1024 aa = mod_reduce(a, mod);
    BigUInt1024 res; // zero
    BigUInt1024 bb = b;
    for (int i = 0; i < 1024; ++i) {
        if (bb.lsb()) {
            res = add_mod(res, aa, mod);
        }
        aa = add_mod(aa, aa, mod);
        bb.shift_right1();
    }
    return res;
}

void rsa_encrypt(BigUInt1024 message[N], BigUInt1024 encrypted_message[N], BigUInt1024 e, BigUInt1024 n) {

    for (int i = 0; i < N; i++) {

        BigUInt1024 result = BigUInt1024::from_uint64(1);
        BigUInt1024 base = message[i];
        BigUInt1024 exponent = e;

        for (int j = 0; j < 1024; j++) {

            if (exponent.lsb()) {
                result = modmul(result, base, n);
            }
            base = modmul(base, base, n);
            exponent.shift_right1();
        }

        encrypted_message[i] = result;
    }
}

// Top function name: rsa_encrypt
