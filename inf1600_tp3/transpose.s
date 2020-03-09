.globl matrix_transpose_asm

matrix_transpose_asm:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        pushl   %esi
        subl    $24, %esp
        movl    $0, -8(%ebp)
        movl    $0, -24(%ebp)
.LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
        movl    -24(%ebp), %eax
        cmpl    -20(%ebp), %eax
        jge     .LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
        movl    $0, -28(%ebp)
.LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
        movl    -28(%ebp), %eax
        cmpl    -20(%ebp), %eax
        jge     .LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
        movl    -12(%ebp), %eax
        movl    -24(%ebp), %ecx
        movl    -28(%ebp), %edx
        imull   -20(%ebp), %edx
        addl    %edx, %ecx
        movl    (%eax,%ecx,4), %eax
        movl    -16(%ebp), %ecx
        movl    -28(%ebp), %edx
        movl    -24(%ebp), %esi
        imull   -20(%ebp), %esi
        addl    %esi, %edx
        movl    %eax, (%ecx,%edx,4)
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
        movl    -28(%ebp), %eax
        addl    $1, %eax
        movl    %eax, -28(%ebp)
        jmp     .LBB0_3
.LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
        jmp     .LBB0_7
.LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
        movl    -24(%ebp), %eax
        addl    $1, %eax
        movl    %eax, -24(%ebp)
        jmp     .LBB0_1
.LBB0_8:
        movl    -8(%ebp), %eax
        addl    $24, %esp
        popl    %esi
        popl    %ebp
        leave          /* restore ebp and esp */
        retl            /* return to the caller */
