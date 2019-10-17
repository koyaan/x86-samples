; ----------------------------------------------------------------------------------------
; Writes "Hello, World" to the console using only system calls. Runs on 64-bit Linux only.
; To assemble and run:
;
;     nasm -felf64 hello.asm && ld hello.o && ./a.out
; ----------------------------------------------------------------------------------------

          global    _start

section .data
    val: dq 123.45  ;declare quad word (double precision)

section .bss
    res: resq 1     ;reserve 1 quad word for result

section   .text
    global _start
    extern printf

_start: mov       rax, 1                  ; system call for write
        mov       rdi, 1                  ; file handle 1 is stdout
        mov       rsi, message            ; address of string to output
        mov       rdx, 13                 ; number of bytes
        syscall                           ; invoke operating system to do the write
     	fld qword [val] ;load value into st0
        fsqrt           ;compute square root of st0 and store in st0
        fstp qword [res] ;store st0 in [res], and pop it off the x87 stack (leaving the x87 register stack empty again)
        mov       rax, 60                 ; system call for exit
        xor       rdi, rdi                ; exit code 0
        syscall                           ; invoke operating system to exit

          section   .data
message:  db        "Hello, World", 10      ; note the newline at the end
