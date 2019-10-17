#include <mmintrin.h>

int main(int argc, char *argv)  {
    __m64 a = {0xb33f, 0xc4ce};
    __m64 b = {0xc4f3, 0xb4b3};
    __m64 res;

    res = _mm_add_pi16 (a, b);
}
