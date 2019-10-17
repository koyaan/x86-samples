	.file	"test.c"
	.section	.rodata
.LC2:
	.string	"\nFloat:  %f\n"
.LC3:
	.string	"Double: %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	flds	.LC0(%rip)
	fstps	-4(%rbp)
	fldl	.LC1(%rip)
	fstpl	-16(%rbp)
	flds	-4(%rbp)
	subq	$8, %rsp
	leaq	-8(%rsp), %rsp
	fstpl	(%rsp)
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	subq	$8, %rsp
	pushq	-16(%rbp)
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1079334229
	.align 8
.LC1:
	.long	2863311523
	.long	1074440874
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
