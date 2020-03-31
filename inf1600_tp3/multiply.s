.globl matrix_multiply_asm

matrix_multiply_asm:
    .LFB20:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L86
.L91:
	movl	$0, -8(%rbp)
	jmp	.L87
.L90:
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L88
.L89:
	movl	-4(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	%eax, -16(%rbp)
	addl	$1, -12(%rbp)
.L88:
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L89
	movl	-4(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -8(%rbp)
.L87:
	movl	-8(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L90
	addl	$1, -4(%rbp)
.L86:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L91
	nop
	nop
	popq	%rbp
	ret   
