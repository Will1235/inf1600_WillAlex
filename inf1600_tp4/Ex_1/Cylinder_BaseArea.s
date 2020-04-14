.globl	_ZNK8Cylinder11BaseAreaAsmEv

_ZNK8Cylinder11BaseAreaAsmEv:
		push %ebp      /* save old base pointer */
		mov %esp, %ebp /* set ebp to current esp */
	
	/* Write your solution here */
	movl    8(%ebp), %eax			# stock l'addrese de l'objet dans eax 
	flds     4(%eax)				# met rayon dans st[0]
	flds     4(%eax)				# met rayon dans st[1] et st[0]
	fmulp							# multiplie st[0] et st[1]	
	fldpi							# met pi dans st[0] et met le résultat de la multiplication dans st[1]
	fmulp							# multiplie pour trouver l'aire (pi*radius_*radius_)

		leave          /* restore ebp and esp */
		ret            /* return to the caller */
