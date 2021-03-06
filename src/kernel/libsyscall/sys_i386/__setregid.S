#define __SYSCALL_32BIT_ARG_BYTES 8
#include "SYS.h"

#ifndef SYS_setregid
#error "SYS_setregid not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__i386__)
__SYSCALL2(__setregid, setregid, 2, cerror_nocancel)
#endif

#if defined(__i386__)
	.globl	setregid$UNIX2003
		setregid$UNIX2003 = __setregid
#endif

