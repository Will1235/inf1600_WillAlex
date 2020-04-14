.globl	_ZNK9Rectangle11DiagonalAsmEv

_ZNK9Rectangle11DiagonalAsmEv:
		push %ebp      /* save old base pointer */
		mov %esp, %ebp /* set ebp to current esp */
	
	/* Write your solution here */
	movl    8(%ebp), %eax			# stock l'addrese de l'objet dans eax 
	flds    4(%eax)					# met lenght dans st[0]
	flds	4(%eax)					# met lenght dans st[1] et st[0]
	fmulp							# multiplie st[0] et st[1]
	
 
	flds    8(%eax)					# met width dans st[0]
	flds	8(%eax)					# met width dans st[0] et st[1]
	fmulp							# multiplie st[0] et st[1]
	pop  	%ecx					# met le résultat de st[0] dans ecx pour faire baisser la pile
	
	faddp							# additione les deux st[0] et st [1]
	fsqrt							# donne la racine du résultat

		leave          /* restore ebp and esp */
		ret            /* return to the caller */
		