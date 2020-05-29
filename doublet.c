#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>

int main(void)	 {
	double test = 23.5;
	long long testint;
	//printf("double is %d long long is %d\n", sizeof(double), sizeof(long long));
	memcpy((void*) &testint, (void*) &test, 8);
	printf("%lf\n", test);
	printf("%" PRIx64 "\n", (uint64_t) testint);
	memcpy((void*) &test, (void*) &testint, 8);
	printf("%lf\n", test);
	printf("%" PRIx64 "\n", (uint64_t) testint);

	printf("float is %d int is %d\n", sizeof(float), sizeof(int));
	float testf = 3.1337;
	int  testshort;
	memcpy((void*) &testshort, (void*) &testf, 4);
	printf("%lf\n", testf);
	printf("%" PRIx32 "\n", testshort);
	memcpy((void*) &testf, (void*) &testshort, 4);
	printf("%lf\n", testf);
	printf("%" PRIx32 "\n", testshort);
	return 0;
}