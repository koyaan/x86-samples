global    _start

section .data
    valtest:    dq 123.45  ;declare quad word (double precision)
    one:        dq 1.0
    two:        dq 2.0
    three:      dq 3.0
    big:        dq 313373137733.31337

section .bss
    res: resq 1     ;reserve 1 quad word for result

section   .text
    global _start
    extern printf

_start:
        fld     qword [big]
        fld     qword [one]
        fld     qword [two]
        fld     qword [three]
        fld     qword [valtest]
        fldpi                       ; Push π onto the FPU register stack.
        fldl2t                      ; Push log 2 10 onto the FPU register stack.
        fldl2e                      ; Push log 2 e onto the FPU register stack.
        fsqrt
        fstp    qword [res]
        mov     rax, 60             ; system call for exit
        xor     rdi, rdi            ; exit code 0
        syscall                     ; invoke operating system to exit

;section   .data
;message:  db        "Hello, World", 10      ; note the newline at the end
