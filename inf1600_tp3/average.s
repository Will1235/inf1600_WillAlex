.global matrix_row_aver_asm

matrix_row_aver_asm:
       .LFB21:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L93
.L96:
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L94
.L95:
	movl	-4(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -12(%rbp)
	addl	$1, -8(%rbp)
.L94:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L95
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %eax
	cltd
	idivl	-36(%rbp)
	movl	%eax, (%rcx)
	addl	$1, -4(%rbp)
.L93:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L96
	nop
	nop
	popq	%rbp
	ret
		
