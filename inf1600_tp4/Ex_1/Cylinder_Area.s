.globl	_ZNK8Cylinder7AreaAsmEv

_ZNK8Cylinder7AreaAsmEv:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
    
    /* Write your solution here */
    movl 8(%ebp), %eax                              # met l'adresse de l'objet dans %eax
    pushl	%eax									# Pousse %eax sur la pile
    call    _ZNK8Cylinder11BaseAreaAsmEv			# appel la fonction Cylinder_BaseArea() a st[0]
    call    _ZNK8Cylinder14LateralAreaAsmEv         # appel la fonction Cylinder_LateralArea() a st[0] et Cylinder_BaseArea() va a st[1]
    faddp											# addition des deux résultat
    pop %eax                                        # retire de la pile le résultat dans %eax
    
        leave          /* restore ebp and esp */
        ret            /* return to the caller */
