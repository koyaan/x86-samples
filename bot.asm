	global _start

_start: mov r15, 0400000h       ; only on native
        mov r14, 080h
		jmp findb
bcont:  call init
		int3
init:   pop rbx
        pop r9
		vpbroadcastb ymm0, [rbx]
		vmovdqu ymm1, [r9]
        sub rcx, 1fh
        add r9, 020h
        and r9, rcx
        mov rax, r9
        vmovdqu [r9], ymm1
        shr rax, 3
        and rax, 0fffh          ; only on native
        jmp r9
findb:  call bcont
; bombloop that gets relocated to aligned adress
bomb:	cmp rdi, rax			; dont overwrite self
        jne notme
        add rdi, 04h
notme:  cmp rdi, r14			; loop 1k
        jne  notmod
        xor rdi, rdi
notmod: vmovdqu [r15+rdi*8], ymm0
        add rdi, 04h
        jmp bomb
