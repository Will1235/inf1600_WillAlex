.globl	_ZNK9Rectangle11DiagonalAsmEv

_ZNK9Rectangle11DiagonalAsmEv:
	push %ebp      /* save old base pointer */
	mov %esp, %ebp /* set ebp to current esp */
	
	/* Write your solution here */
	movl    8(%ebp), %eax			# stock l'addrese de l'objet dans eax 
	flds    4(%eax)					# met lenght dans st[0]
	movl    8(%ebp), %eax
	flds	4(%eax)					# met lenght dans st[1] et st[0]
	fmulp							# multiplie st[0] et st[1]
	fstp	%edx					# met le résultat de st[0] dans edx
	

	movl    8(%ebp), %eax			# stock l'addrese de l'objet dans eax 
	flds    8(%eax)					# met width dans st[0]
	movl    8(%ebp), %eax
	flds	8(%eax)
	fmulp							# multiplie st[0] et st[1]
	fstp	%ecx					# met le résultat de st[0] dans ecx
	

	flds    %edx					# met le résultat de length au carré a st[0]
	flds	%ecx					# met le résultat de width au carré a st[0] et length a st[1]
	faddp							# additione les deux st[]
	fsqrt							# donne la racine du résultat

	leave          /* restore ebp and esp */
	ret            /* return to the caller */
