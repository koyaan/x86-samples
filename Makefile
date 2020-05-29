float: float.c
	gcc -march=x86-64 -mno-sse -O0 -o bin/float float.c

floatasm: float.asm
	nasm -felf64 float.asm && ld float.o -o bin/floatasm

hello: hello.asm
	nasm -felf64 hello.asm && ld hello.o -o bin/hello

allxmm: allxmm.asm
	nasm -felf64 allxmm.asm && ld allxmm.o -o bin/allxmm

sse2: sse2.c
	gcc -o bin/sse2 sse2.c

sse32: sse.asm
	nasm -felf32 sse.asm && ld -m elf_i386 sse.o -o bin/sse32

mmx: mmx.c
	gcc -o bin/mmx mmx.c

xmm: xmm.c
	gcc -o bin/xmm xmm.c

doublet: doublet.c
	gcc -o bin/doublet doublet.c

longdouble: longdouble.c
	gcc -o bin/ld longdouble.c

ymm: ymm.asm
	nasm -felf64 ymm.asm && ld ymm.o -o bin/ymm
