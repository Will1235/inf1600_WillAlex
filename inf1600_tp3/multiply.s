.globl matrix_multiply_asm

matrix_multiply_asm:
        push %ebp      /* save old base pointer */
        mov %esp, %ebp /* set ebp to current esp */
        pushl   %esi
        subl    $36, %esp
        movl    $0, -8(%ebp)
        movl    $0, -28(%ebp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
                                        ##       Child Loop BB0_5 Depth 3
        movl    -28(%ebp), %eax
        cmpl    -24(%ebp), %eax
        jge     LBB0_12
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
        movl    $0, -32(%ebp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_5 Depth 3
        movl    -32(%ebp), %eax
        cmpl    -24(%ebp), %eax
        jge     LBB0_10
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
        movl    $0, -40(%ebp)
        movl    $0, -36(%ebp)
LBB0_5:                                 ##   Parent Loop BB0_1 Depth=1
                                        ##     Parent Loop BB0_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
        movl    -36(%ebp), %eax
        cmpl    -24(%ebp), %eax
        jge     LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=3
        movl    -12(%ebp), %eax
        movl    -36(%ebp), %ecx
        movl    -28(%ebp), %edx
        imull   -24(%ebp), %edx
        addl    %edx, %ecx
        movl    (%eax,%ecx,4), %eax
        movl    -16(%ebp), %ecx
        movl    -32(%ebp), %edx
        movl    -36(%ebp), %esi
        imull   -24(%ebp), %esi
        addl    %esi, %edx
        imull   (%ecx,%edx,4), %eax
        addl    -40(%ebp), %eax
        movl    %eax, -40(%ebp)
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=3
        movl    -36(%ebp), %eax
        addl    $1, %eax
        movl    %eax, -36(%ebp)
        jmp     LBB0_5
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=2
        movl    -40(%ebp), %eax
        movl    -20(%ebp), %ecx
        movl    -32(%ebp), %edx
        movl    -28(%ebp), %esi
        imull   -24(%ebp), %esi
        addl    %esi, %edx
        movl    %eax, (%ecx,%edx,4)
## %bb.9:                               ##   in Loop: Header=BB0_3 Depth=2
        movl    -32(%ebp), %eax
        addl    $1, %eax
        movl    %eax, -32(%ebp)
        jmp     LBB0_3
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
        jmp     LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
        movl    -28(%ebp), %eax
        addl    $1, %eax
        movl    %eax, -28(%ebp)
        jmp     LBB0_1
LBB0_12:
        movl    -8(%ebp), %eax
        addl    $36, %esp
        popl    %esi
        popl    %ebp
        leave          /* restore ebp and esp */
        retl            /* return to the caller */
