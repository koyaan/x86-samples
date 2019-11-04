; https://en.wikibooks.org/wiki/X86_Assembly/SSE
global _start

section .data
    v1: dd 1.1, 2.2, 3.3, 4.4    ;first set of 4 numbers
    v2: dd 5.5, 6.6, 7.7, 8.8    ;second set
    v3: dd 0.3, 1.3, 2.3, 3.3
    v4: dd 0.4, 1.4, 2.4, 3.4
    v5: dd 0.5, 1.5, 2.5, 3.5
    v6: dd 0.6, 1.6, 2.6, 3.6
    v7: dd 0.7, 1.7, 2.7, 3.7
    v8: dd 8.1, 8.2, 8.3, 8.4
    v9: dd 9.1, 9.2, 9.3, 9.4
    v10: dd 10.1, 10.2, 10.3, 10.4
    v11: dd 11.1, 11.2, 11.3, 11.4
    v12: dd 12.1, 12.2, 12.3, 12.4
    v13: dd 13.1, 13.2, 13.3, 13.4
    v14: dd 14.1, 14.2, 14.3, 14.4
    v15: dd 15.1, 15.2, 15.3, 15.4
    v16: dd 16.1, 16.2, 16.3, 16.4

section .bss
    vres: resd 4    ;result
    
section .text
    _start:
    
    movups xmm0, [v1]   ;load v1 into xmm0
    movups xmm1, [v2]
    movups xmm2, [v3]
    movups xmm3, [v4]
    movups xmm4, [v5]
    movups xmm5, [v6]
    movups xmm6, [v7]
    movups xmm7, [v8]
    movups xmm8, [v9]
    movups xmm9, [v10]
    movups xmm10, [v11]
    movups xmm11, [v12]
    movups xmm12, [v13]
    movups xmm13, [v14]
    movups xmm14, [v15]
    movups xmm15, [v16]
    ;end program
    ret
