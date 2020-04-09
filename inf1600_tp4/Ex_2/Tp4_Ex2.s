	.file	"Tp4_Ex2.c"
	.text
	.globl	change_endianness
	.type	change_endianness, @function
change_endianness:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	bswap	%eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	change_endianness, .-change_endianness
	.section	.rodata
	.align 8
.LC0:
	.string	"Donn\303\251e en little-endian: %08x\nDonn\303\251e en big-endian   : %08x\nDonn\303\251e en little-endian: %08x\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	$-15654162, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	change_endianness
	movl	%eax, %edi
	call	change_endianness
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	change_endianness
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movl	%ebx, %ecx
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
