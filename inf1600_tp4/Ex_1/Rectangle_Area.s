.globl	_ZNK9Rectangle7AreaAsmEv

_ZNK9Rectangle7AreaAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
    
    /* Write your solution here */
    movl    8(%ebp), %eax			# stock l'addrese de l'objet dans eax
    flds    4(%eax)					# met lenght dans st[0]
    flds	8(%eax)					# met width dans st[0] et lenght dans st[1]
    fmulp							# multiplie st[0] et st[1]
    
    
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
        