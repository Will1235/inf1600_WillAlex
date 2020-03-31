.globl matrix_equals_asm

matrix_equals_asm:
       .LFB16:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L62
.L67:
	movl	$0, -8(%rbp)
	jmp	.L63
.L66:
	movl	-4(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L64
	movl	$0, %eax
	jmp	.L65
.L64:
	addl	$1, -8(%rbp)
.L63:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L66
	addl	$1, -4(%rbp)
.L62:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L67
	movl	$1, %eax
.L65:
	popq	%rbp
	ret
	
