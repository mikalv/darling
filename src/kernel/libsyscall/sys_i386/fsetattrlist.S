#define __SYSCALL_32BIT_ARG_BYTES 20
#include "SYS.h"

#ifndef SYS_fsetattrlist
#error "SYS_fsetattrlist not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__i386__)
__SYSCALL2(fsetattrlist, fsetattrlist, 5, cerror_nocancel)
#endif

