.globl matrix_equals_asm

matrix_equals_asm:
        push %ebp      /* Save old base pointer */
        mov %esp, %ebp /* Set ebp to current esp */
        subl    $20, %esp
        movl    $0, -4(%ebp)
        movl    $0, -20(%ebp)
L1:
        movl    -20(%ebp), %eax
        cmpl    -16(%ebp), %eax
        jge     L6

        movl    -8(%ebp), %eax
        movl    -20(%ebp), %ecx
        movl    (%eax,%ecx,4), %eax
        movl    -12(%ebp), %ecx
        movl    -20(%ebp), %edx
        cmpl    (%ecx,%edx,4), %eax
        je      L4

        movl    $0, -4(%ebp)
        jmp     FIN
L4:
        jmp     L5
L5:
        movl    -20(%ebp), %eax
        addl    $1, %eax
        movl    %eax, -20(%ebp)
        jmp     L1
L6:
        movl    $1, -4(%ebp)
FIN:
        movl    -4(%ebp), %eax
        addl    $20, %esp
        popl    %ebp
        leave          /* Restore ebp and esp */
        retl           /* Return to the caller */
