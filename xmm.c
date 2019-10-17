#include <xmmintrin.h>


__m128 a = {0xaaaaaaaa, 0xbbbbbbbb, 0xcccccccc, 0xdddddddd};
__m128 b = {0x44444444, 0x33333333, 0x22222222, 0x11111111};
int main(void)  {
    __m128 res = _mm_add_ss(a,b);
    return 0;
}
