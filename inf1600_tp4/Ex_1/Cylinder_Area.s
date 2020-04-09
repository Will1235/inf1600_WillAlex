.globl	_ZNK8Cylinder7AreaAsmEv

_ZNK8Cylinder7AreaAsmEv:
    push %ebp      /* save old base pointer */
    mov %esp, %ebp /* set ebp to current esp */
    
    /* Write your solution here */
    pushl	%eax									# permet a la fonction call de mettre le résultat dans eax
    call    _ZNK8Cylinder11BaseAreaAsmEv			# appel la fonction Cylinder_BaseArea 
    flds	%eax									# ajout du résultat dans st[0]
    pushl   %ecx
    call    _ZNK8Cylinder14LateralAreaAsmEv
    flds    %ecx
    faddp											# addition des deux résultat
    
    leave          /* restore ebp and esp */
    ret            /* return to the caller */
