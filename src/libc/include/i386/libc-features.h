#ifndef _LIBC_FEATURES_H_
#define _LIBC_FEATURES_H_

#if !defined(__i386__)
#error Mismatched libc-features.h architecture
#endif

#define UNIFDEF_LEGACY_RUNE_APIS 1
#define LEGACY_CRT1_ENVIRON 1
#define UNIFDEF_LEGACY_UTMP_APIS 1
/* #undef UNIFDEF_MOVE_LOCALTIME */
#if __DARWIN_ONLY_VERS_1050
#  error Feature mismatch: __DARWIN_ONLY_VERS_1050 == 1
#endif /* __DARWIN_ONLY_VERS_1050 */
#if __DARWIN_ONLY_UNIX_CONFORMANCE
#  error Feature mismatch: __DARWIN_ONLY_UNIX_CONFORMANCE == 1
#endif /* __DARWIN_ONLY_UNIX_CONFORMANCE */
#if __DARWIN_ONLY_64_BIT_INO_T
#  error Feature mismatch: __DARWIN_ONLY_64_BIT_INO_T == 1
#endif /* __DARWIN_ONLY_64_BIT_INO_T */
#define __APPLE_PR3417676_HACK__ 1
#define PR_5243343 1
/* #define PLOCKSTAT 1 */
/* #define NOTIFY_TZ 1 */
/* #undef LIBC_NO_LIBCRASHREPORTERCLIENT */
#define CONFIG_MEMORYSTATUS 1
#endif // _LIBC_FEATURES_H_
