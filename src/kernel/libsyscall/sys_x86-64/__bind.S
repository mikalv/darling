#define __SYSCALL_32BIT_ARG_BYTES 12
#include "SYS.h"

#ifndef SYS_bind
#error "SYS_bind not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__x86_64__)
__SYSCALL2(__bind, bind, 3, cerror_nocancel)
#endif

#if defined(__x86_64__)
	.globl	bind
		bind = __bind
#endif

