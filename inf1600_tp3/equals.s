.globl matrix_equals_asm

_matrix_equals:                         ## @matrix_equals
	.cfi_startproc
## %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$24, %esp
	.cfi_offset %esi, -12
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	$0, -12(%ebp)
	movl	%eax, -20(%ebp)         ## 4-byte Spill
	movl	%ecx, -24(%ebp)         ## 4-byte Spill
	movl	%edx, -28(%ebp)         ## 4-byte Spill
LBB11_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB11_3 Depth 2
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jge	LBB11_10
## %bb.2:                               ##   in Loop: Header=BB11_1 Depth=1
	movl	$0, -16(%ebp)
LBB11_3:                                ##   Parent Loop BB11_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	jge	LBB11_8
## %bb.4:                               ##   in Loop: Header=BB11_3 Depth=2
	movl	8(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	-12(%ebp), %edx
	imull	16(%ebp), %edx
	addl	%edx, %ecx
	movl	(%eax,%ecx,4), %eax
	movl	12(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %esi
	imull	16(%ebp), %esi
	addl	%esi, %edx
	cmpl	(%ecx,%edx,4), %eax
	je	LBB11_6
## %bb.5:
	movl	$0, -8(%ebp)
	jmp	LBB11_11
LBB11_6:                                ##   in Loop: Header=BB11_3 Depth=2
	jmp	LBB11_7
LBB11_7:                                ##   in Loop: Header=BB11_3 Depth=2
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	LBB11_3
LBB11_8:                                ##   in Loop: Header=BB11_1 Depth=1
	jmp	LBB11_9
LBB11_9:                                ##   in Loop: Header=BB11_1 Depth=1
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	LBB11_1
LBB11_10:
	movl	$1, -8(%ebp)
LBB11_11:
	movl	-8(%ebp), %eax
	addl	$24, %esp
	popl	%esi
	popl	%ebp
	retl
	.cfi_endproc
                                        ## -- End function