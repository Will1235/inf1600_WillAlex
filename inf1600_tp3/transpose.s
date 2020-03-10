.globl matrix_transpose_asm

_matrix_transpose:                      ## @matrix_transpose
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
LBB5_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_3 Depth 2
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jge	LBB5_8
## %bb.2:                               ##   in Loop: Header=BB5_1 Depth=1
	movl	$0, -12(%ebp)
LBB5_3:                                 ##   Parent Loop BB5_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jge	LBB5_6
## %bb.4:                               ##   in Loop: Header=BB5_3 Depth=2
	movl	8(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	-12(%ebp), %edx
	imull	16(%ebp), %edx
	addl	%edx, %ecx
	movl	(%eax,%ecx,4), %eax
	movl	12(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %esi
	imull	16(%ebp), %esi
	addl	%esi, %edx
	movl	%eax, (%ecx,%edx,4)
## %bb.5:                               ##   in Loop: Header=BB5_3 Depth=2
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	LBB5_3
LBB5_6:                                 ##   in Loop: Header=BB5_1 Depth=1
	jmp	LBB5_7
LBB5_7:                                 ##   in Loop: Header=BB5_1 Depth=1
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	LBB5_1
LBB5_8:
	addl	$20, %esp
	popl	%esi
	popl	%ebp
	retl
	.cfi_endproc
                                        ## -- End function