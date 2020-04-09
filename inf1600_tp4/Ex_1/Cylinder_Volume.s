.globl	_ZNK8Cylinder9VolumeAsmEv

_ZNK8Cylinder9VolumeAsmEv:
    push %ebp      /* save old base pointer */
    mov %esp, %ebp /* set ebp to current esp */
    
    /* Write your solution here */
    movl    8(%ebp), %eax					# stock l'addrese de l'objet dans eax 
    flds    4(%eax)							# met la hauteur dans st[0]
    pushl   %eax							# permet a la fonction call de mettre le résultat dans eax 
    call    _ZNK8Cylinder11BaseAreaAsmEv	# met l'aire de la base dans eax
    flds    %eax							# met eax a st[0] et hauteur a st[1]
    fmulp									# multiplie les r�sultat

    leave          /* restore ebp and esp */
    ret            /* return to the caller */
