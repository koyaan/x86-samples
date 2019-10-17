#include<stdio.h>

float a = 3.3333333; // 7 significant digits
float d = 1.0; // 7 significant digits
float e = 2.0; // 7 significant digits
double b = 3.33333333333333;// 14 significant digits
int main(void){
    float g = d+e; 
    printf("\nFloat:  %f\n", d);
    float h;
    printf("dd: 0x%08x\n", *(unsigned long *) &d);
    printf("de: 0x%08x", *(unsigned long *) &e);
    printf("\nFloat:  %f\n", e);
    printf("Double: %f\n", g);
    printf(" *** h *** \n");
    printf("%f: 0x%08x\n", h, *(unsigned long *) &h);
    h = 1.0;
    printf("%f: 0x%08x\n", h, *(unsigned long *) &h);
    return 0;
} 
