float: float.c
	gcc -march=x86-64 -mno-sse -O0 -o bin/float float.c

floatasm: float.asm
	nasm -felf64 float.asm && ld float.o -o bin/floatasm

sse2: sse2.c
	gcc -o bin/sse2 sse2.c

sse32: sse.asm
	nasm -felf32 sse.asm && ld -m elf_i386 sse.o -o bin/sse32
