.globl	_ZNK8Cylinder12PerimeterAsmEv

factor: .float 2.0 /* use this to mult by two */

_ZNK8Cylinder12PerimeterAsmEv:
      
		push	%ebp			/*Met %ebp sur la pile*/
		mov 	%esp, %ebp		/*Met %esp sur %ebp*/
	
	movl 	8(%ebp), %eax		/*Met l'adresse de l'objet dans %eax*/
	flds	4(%eax)				/*Met la variable radius_ dans st[0]*/
	fld 	factor				/*Met 2 dans st[0] et radius_ dans st[1]*/
	fmulp 						/*2*radius_ et met le résultat dans st[1] et st [0]*/
	fldpi						/*Ajoute pi au-dessus de la pile*/
	fmulp						/* 2*pi*radius_ */

	
		leave		/*restore ebp and esp*/
		ret			/*return to the caller*/
		