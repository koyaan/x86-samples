#include <stdio.h>

int  main(void) {
    long double one = 1.0;
    long double two = 2.0;
    long double three = one+two;
    printf("%Lf %Lf %Lf\n", one, two, three);

    return 0;
}
