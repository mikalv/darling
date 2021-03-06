#define __SYSCALL_32BIT_ARG_BYTES 8
#include "SYS.h"

#ifndef SYS_gettid
#error "SYS_gettid not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__i386__)
__SYSCALL2(__gettid, gettid, 2, cerror_nocancel)
#endif

#if defined(__i386__)
	.globl	pthread_getugid_np
		pthread_getugid_np = __gettid
#endif

