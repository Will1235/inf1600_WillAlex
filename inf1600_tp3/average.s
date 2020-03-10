.global matrix_row_aver_asm

_matrix_row_aver:                       ## @matrix_row_aver
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
	movl	$0, -8(%ebp)
	movl	%eax, -20(%ebp)         ## 4-byte Spill
	movl	%ecx, -24(%ebp)         ## 4-byte Spill
	movl	%edx, -28(%ebp)         ## 4-byte Spill
LBB8_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_3 Depth 2
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jge	LBB8_8
## %bb.2:                               ##   in Loop: Header=BB8_1 Depth=1
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
LBB8_3:                                 ##   Parent Loop BB8_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jge	LBB8_6
## %bb.4:                               ##   in Loop: Header=BB8_3 Depth=2
	movl	8(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	-8(%ebp), %edx
	imull	16(%ebp), %edx
	addl	%edx, %ecx
	movl	(%eax,%ecx,4), %eax
	addl	-16(%ebp), %eax
	movl	%eax, -16(%ebp)
## %bb.5:                               ##   in Loop: Header=BB8_3 Depth=2
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	LBB8_3
LBB8_6:                                 ##   in Loop: Header=BB8_1 Depth=1
	movl	-16(%ebp), %eax
	cltd
	idivl	16(%ebp)
	movl	12(%ebp), %ecx
	movl	-8(%ebp), %esi
	movl	%eax, (%ecx,%esi,4)
## %bb.7:                               ##   in Loop: Header=BB8_1 Depth=1
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	LBB8_1
LBB8_8:
	addl	$24, %esp
	popl	%esi
	popl	%ebp
	retl
	.cfi_endproc
                                        ## -- End function