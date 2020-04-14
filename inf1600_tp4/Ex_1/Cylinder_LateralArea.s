.globl	_ZNK8Cylinder14LateralAreaAsmEv

_ZNK8Cylinder14LateralAreaAsmEv:
       
		pushl %ebp						/*Met %ebp sur la pile*/
		movl %esp, %ebp					/*Met %esp sur %ebp*/

	movl 8(%ebp), %eax
	flds 8(%eax)						/*Met height_ dans st[0]*/
	pushl %eax							/*Pousse %eax sur la pile*/
	call _ZNK8Cylinder12PerimeterAsmEv	/*Appel de la méthode PerimeterAsm()*/
	fmulp								/*Périmètre * hauteur*/
	pop %eax							/*Dépile le résultat contenu dans %eax*/
	
	
		leave		/*restore ebp and esp*/
		ret			/*return to the caller*/
