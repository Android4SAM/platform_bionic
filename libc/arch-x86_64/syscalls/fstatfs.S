/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(fstatfs)
    movl    $__NR_fstatfs, %eax
    syscall
    cmpq    $-MAX_ERRNO, %rax
    jb      1f
    negl    %eax
    movl    %eax, %edi
    call    __set_errno
    orq     $-1, %rax
1:
    ret
END(fstatfs)
