.global matrix_diagonal_asm

_matrix_diagonal:                       ## @matrix_diagonal
	.cfi_startproc
## %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$20, %esp
	.cfi_offset %esi, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	$0, -8(%ebp)
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	movl	%ecx, -20(%ebp)         ## 4-byte Spill
	movl	%edx, -24(%ebp)         ## 4-byte Spill
LBB6_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_3 Depth 2
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jge	LBB6_11
## %bb.2:                               ##   in Loop: Header=BB6_1 Depth=1
	movl	$0, -12(%ebp)
LBB6_3:                                 ##   Parent Loop BB6_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jge	LBB6_9
## %bb.4:                               ##   in Loop: Header=BB6_3 Depth=2
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	LBB6_6
## %bb.5:                               ##   in Loop: Header=BB6_3 Depth=2
	movl	8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	-8(%ebp), %edx
	imull	16(%ebp), %edx
	addl	%edx, %ecx
	movl	(%eax,%ecx,4), %eax
	movl	12(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %esi
	imull	16(%ebp), %esi
	addl	%esi, %edx
	movl	%eax, (%ecx,%edx,4)
	jmp	LBB6_7
LBB6_6:                                 ##   in Loop: Header=BB6_3 Depth=2
	movl	12(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	-8(%ebp), %edx
	imull	16(%ebp), %edx
	addl	%edx, %ecx
	movl	$0, (%eax,%ecx,4)
LBB6_7:                                 ##   in Loop: Header=BB6_3 Depth=2
	jmp	LBB6_8
LBB6_8:                                 ##   in Loop: Header=BB6_3 Depth=2
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	LBB6_3
LBB6_9:                                 ##   in Loop: Header=BB6_1 Depth=1
	jmp	LBB6_10
LBB6_10:                                ##   in Loop: Header=BB6_1 Depth=1
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	LBB6_1
LBB6_11:
	addl	$20, %esp
	popl	%esi
	popl	%ebp
	retl
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function vector_create
_vector_create:                         ## @vector_create
	.cfi_startproc
## %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	8(%ebp), %ecx
	shll	$2, %ecx
	movl	%ecx, (%esp)
	movl	%eax, -4(%ebp)          ## 4-byte Spill
	calll	_malloc
	addl	$8, %esp
	popl	%ebp
	retl
	.cfi_endproc
                                        ## -- End function