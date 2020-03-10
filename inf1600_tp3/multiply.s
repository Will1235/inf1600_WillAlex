.globl matrix_multiply_asm

_matrix_multiply:                       ## @matrix_multiply
	.cfi_startproc
## %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$32, %esp
	.cfi_offset %esi, -12
	movl	20(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	8(%ebp), %esi
	movl	$0, -8(%ebp)
	movl	%eax, -24(%ebp)         ## 4-byte Spill
	movl	%ecx, -28(%ebp)         ## 4-byte Spill
	movl	%edx, -32(%ebp)         ## 4-byte Spill
	movl	%esi, -36(%ebp)         ## 4-byte Spill
LBB10_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_3 Depth 2
                                        ##       Child Loop BB10_5 Depth 3
	movl	-8(%ebp), %eax
	cmpl	20(%ebp), %eax
	jge	LBB10_12
## %bb.2:                               ##   in Loop: Header=BB10_1 Depth=1
	movl	$0, -12(%ebp)
LBB10_3:                                ##   Parent Loop BB10_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB10_5 Depth 3
	movl	-12(%ebp), %eax
	cmpl	20(%ebp), %eax
	jge	LBB10_10
## %bb.4:                               ##   in Loop: Header=BB10_3 Depth=2
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
LBB10_5:                                ##   Parent Loop BB10_1 Depth=1
                                        ##     Parent Loop BB10_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-16(%ebp), %eax
	cmpl	20(%ebp), %eax
	jge	LBB10_8
## %bb.6:                               ##   in Loop: Header=BB10_5 Depth=3
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	-8(%ebp), %edx
	imull	20(%ebp), %edx
	addl	%edx, %ecx
	movl	(%eax,%ecx,4), %eax
	movl	12(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %esi
	imull	20(%ebp), %esi
	addl	%esi, %edx
	imull	(%ecx,%edx,4), %eax
	addl	-20(%ebp), %eax
	movl	%eax, -20(%ebp)
## %bb.7:                               ##   in Loop: Header=BB10_5 Depth=3
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	LBB10_5
LBB10_8:                                ##   in Loop: Header=BB10_3 Depth=2
	movl	-20(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %esi
	imull	20(%ebp), %esi
	addl	%esi, %edx
	movl	%eax, (%ecx,%edx,4)
## %bb.9:                               ##   in Loop: Header=BB10_3 Depth=2
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	LBB10_3
LBB10_10:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_11
LBB10_11:                               ##   in Loop: Header=BB10_1 Depth=1
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	LBB10_1
LBB10_12:
	addl	$32, %esp
	popl	%esi
	popl	%ebp
	retl
	.cfi_endproc
                                        ## -- End function