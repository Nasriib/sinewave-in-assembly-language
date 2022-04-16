 .file   "signal.cc"
        .text
        .section        .rodata
.LC4:
        .string "w"
.LC5:
        .string "sine_wave.dat"
.LC6:
        .string "sine_wave_1.dat"
.LC7:
        .string "sine_wave_2.dat"
.LC12:
        .string "\n%lf"
        .text
        .globl  main
        .type   main, @function
main:
.LFB226:
        .cfi_startproc
        pushq   %rbp
        .cfi_def_cfa_offset 16
        .cfi_offset 6, -16
        movq    %rsp, %rbp
        .cfi_def_cfa_register 6
        subq    $480080, %rsp
        movsd   .LC0(%rip), %xmm0
        movsd   %xmm0, -16(%rbp)
        movsd   .LC1(%rip), %xmm0
        divsd   -16(%rbp), %xmm0
        movsd   %xmm0, -24(%rbp)
        movsd   .LC2(%rip), %xmm0
        movsd   %xmm0, -32(%rbp)
        pxor    %xmm0, %xmm0
        movsd   %xmm0, -40(%rbp)
        pxor    %xmm0, %xmm0
        movsd   %xmm0, -48(%rbp)
        movl    $.LC4, %esi
        movl    $.LC5, %edi
        call    fopen
        movq    %rax, -56(%rbp)
        movl    $.LC4, %esi
        movl    $.LC6, %edi
        call    fopen
        movq    %rax, -64(%rbp)
        movl    $.LC4, %esi
        movl    $.LC7, %edi
        call    fopen
        movq    %rax, -72(%rbp)
        movl    $0, -4(%rbp)
.L3:
        cmpl    $19999, -4(%rbp)
        jg      .L2
        movsd   -32(%rbp), %xmm0
        movapd  %xmm0, %xmm1
        addsd   %xmm0, %xmm1
        movsd   .LC8(%rip), %xmm0
        mulsd   %xmm0, %xmm1
        cvtsi2sdl       -4(%rbp), %xmm0
        mulsd   %xmm1, %xmm0
        movapd  %xmm0, %xmm1
        mulsd   -24(%rbp), %xmm1
        movsd   -32(%rbp), %xmm0
        movsd   .LC9(%rip), %xmm2
        divsd   %xmm2, %xmm0
        mulsd   %xmm1, %xmm0
        movsd   %xmm0, -40(%rbp)
        movsd   -32(%rbp), %xmm0
        movapd  %xmm0, %xmm1
        addsd   %xmm0, %xmm1
        movsd   .LC10(%rip), %xmm0
        mulsd   %xmm0, %xmm1
        cvtsi2sdl       -4(%rbp), %xmm0
        mulsd   %xmm1, %xmm0
        movapd  %xmm0, %xmm1
        mulsd   -24(%rbp), %xmm1
        movsd   -32(%rbp), %xmm0
        movsd   .LC9(%rip), %xmm2
        divsd   %xmm2, %xmm0
        mulsd   %xmm1, %xmm0
        movsd   %xmm0, -48(%rbp)
        movq    -40(%rbp), %rax
        movq    %rax, %xmm0
        call    sin
        movsd   .LC11(%rip), %xmm1
        mulsd   %xmm1, %xmm0
        movl    -4(%rbp), %eax
        cltq
        movsd   %xmm0, -160080(%rbp,%rax,8)
        movq    -48(%rbp), %rax
        movq    %rax, %xmm0
        call    sin
        movsd   .LC11(%rip), %xmm1
        mulsd   %xmm1, %xmm0
        movl    -4(%rbp), %eax
        cltq
        movsd   %xmm0, -320080(%rbp,%rax,8)
        movl    -4(%rbp), %eax
        cltq
        movsd   -160080(%rbp,%rax,8), %xmm1
        movl    -4(%rbp), %eax
        cltq
        movsd   -320080(%rbp,%rax,8), %xmm0
        addsd   %xmm1, %xmm0
        movl    -4(%rbp), %eax
        cltq
        movsd   %xmm0, -480080(%rbp,%rax,8)
        movl    -4(%rbp), %eax
        cltq
        movq    -160080(%rbp,%rax,8), %rdx
        movq    -56(%rbp), %rax
 movq    %rdx, %xmm0
        movl    $.LC12, %esi
        movq    %rax, %rdi
        movl    $1, %eax
        call    fprintf
        movl    -4(%rbp), %eax
        cltq
        movq    -320080(%rbp,%rax,8), %rdx
        movq    -64(%rbp), %rax
        movq    %rdx, %xmm0
        movl    $.LC12, %esi
        movq    %rax, %rdi
        movl    $1, %eax
        call    fprintf
        movl    -4(%rbp), %eax
        cltq
        movq    -480080(%rbp,%rax,8), %rdx
        movq    -72(%rbp), %rax
        movq    %rdx, %xmm0
        movl    $.LC12, %esi
        movq    %rax, %rdi
        movl    $1, %eax
        call    fprintf
        addl    $1, -4(%rbp)
        jmp     .L3
.L2:
        movq    -56(%rbp), %rax
        movq    %rax, %rdi
        call    fclose
        movq    -64(%rbp), %rax
        movq    %rax, %rdi
        call    fclose
        movq    -72(%rbp), %rax
        movq    %rax, %rdi
        call    fclose
        movl    $0, %eax
        leave
        .cfi_def_cfa 7, 8
        ret
        .cfi_endproc
.LFE226:
        .size   main, .-main
        .section        .rodata
        .align 8
.LC0:
        .long   0
        .long   1084178432
        .align 8
.LC1:
        .long   0
        .long   1072693248
        .align 8
.LC2:
        .long   4028335726
        .long   1074340345
        .align 8
.LC8:
        .long   0
        .long   1079574528
        .align 8
.LC9:
        .long   0
        .long   1080459264
        .align 8
.LC10:
        .long   0
        .long   1082081280
        .align 8
.LC11:
        .long   0
        .long   1076101120
        .ident  "GCC: (GNU) 9.3.0"
        .section        .note.GNU-stack,"",@progbits
