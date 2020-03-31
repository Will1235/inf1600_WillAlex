.global matrix_diagonal_asm

matrix_diagonal_asm:
        .LFB19:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L79
.L84:
	movl	$0, -8(%rbp)
	jmp	.L80
.L83:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L81
	movl	-4(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	jmp	.L82
.L81:
	movl	-4(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
.L82:
	addl	$1, -8(%rbp)
.L80:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L83
	addl	$1, -4(%rbp)
.L79:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L84
	nop
	nop
	popq	%rbp
	ret

