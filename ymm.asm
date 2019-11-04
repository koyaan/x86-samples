; https://en.wikibooks.org/wiki/X86_Assembly/SSE
global _start

section .data
    v0: dd 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7
    v1: dd 1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7
    v2: dd 2.0, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7
    v3: dd 3.0, 3.1, 3.2, 3.3, 3.4, 3.5, 3.6, 3.7
    v4: dd 4.0, 4.1, 4.2, 4.3, 4.4, 4.5, 4.6, 4.7
    v5: dd 5.0, 5.1, 5.2, 5.3, 5.4, 5.5, 5.6, 5.7
    v6: dd 6.0, 6.1, 6.2, 6.3, 6.4, 6.5, 6.6, 6.7
    v7: dd 7.0, 7.1, 7.2, 7.3, 7.4, 7.5, 7.6, 7.7
    v8: dd 8.0, 8.1, 8.2, 8.3, 8.4, 8.5, 8.6, 8.7
    v9: dd 9.0, 9.1, 9.2, 9.3, 9.4, 9.5, 9.6, 9.7
    v10: dd 10.0, 10.1, 10.2, 10.3, 10.4, 10.5, 10.6, 10.7
    v11: dd 11.0, 11.1, 11.2, 11.3, 11.4, 11.5, 11.6, 11.7
    v12: dd 12.0, 12.1, 12.2, 12.3, 12.4, 12.5, 12.6, 12.7
    v13: dd 13.0, 13.1, 13.2, 13.3, 13.4, 13.5, 13.6, 13.7
    v14: dd 14.0, 14.1, 14.2, 14.3, 14.4, 14.5, 14.6, 14.7
    v15: dd 15.0, 15.1, 15.2, 15.3, 15.4, 15.5, 15.6, 15.7

section .bss
    vres: resd 8    ;result
    
section .text
    _start:
    
    vmovups ymm0, [v0]
    vmovups ymm1, [v1]
    vmovups ymm2, [v2]
    vmovups ymm3, [v3]
    vmovups ymm4, [v4]
    vmovups ymm5, [v5]
    vmovups ymm6, [v6]
    vmovups ymm7, [v7]
    vmovups ymm8, [v8]
    vmovups ymm9, [v9]
    vmovups ymm10, [v10]
    vmovups ymm11, [v11]
    vmovups ymm12, [v12]
    vmovups ymm13, [v13]
    vmovups ymm14, [v14]
    vmovups ymm15, [v15]
    ;end program
    ret
