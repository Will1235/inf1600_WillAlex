.globl	_ZNK9Rectangle12PerimeterAsmEv

factor: .float 2.0 /* use this to mult by two */

_ZNK9Rectangle12PerimeterAsmEv:
    	push %ebp			/*Met %ebp sur la pile*/
		mov %esp, %ebp		/*Met %esp sur %ebp*/

	movl 8(%ebp), %eax	/*Ajoutte l'adresse de l'objet dans %eax*/
	flds 4(%eax)		/*Met la variable length_ dans st[0]*/
	flds 8(%eax)		/*Met la variable width_ dans st[1] et length_ dans st[0]*/
	faddp				/*length_ + width_*/
	fld  factor			/*met 2 dans st[0]*/
	fmulp				/* 2 * (width+length) */

	
		leave		/*restore ebp and esp*/
		ret			/*return to the caller*/
		