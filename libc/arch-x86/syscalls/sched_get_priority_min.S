/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(sched_get_priority_min)
    pushl   %ebx
    .cfi_def_cfa_offset 8
    .cfi_rel_offset ebx, 0
    mov     8(%esp), %ebx
    movl    $__NR_sched_get_priority_min, %eax
    int     $0x80
    cmpl    $-MAX_ERRNO, %eax
    jb      1f
    negl    %eax
    pushl   %eax
    call    __set_errno_internal
    addl    $4, %esp
1:
    popl    %ebx
    ret
END(sched_get_priority_min)
