# $NetBSD: Darwin.mk,v 1.47 2011/09/10 16:30:02 abs Exp $
#
# Variable definitions for the Darwin operating system.

# OS, Kernel, Xcode Version
#
# Codename	OS	Kernel	Xcode
# Cheetah	10.0.x	1.3.1
# Puma		10.1	1.4.1
#		10.1.x	5.x.y
# Jaguar	10.2.x	6.x.y
# Panther	10.3.x	7.x.y
# Tiger		10.4.x	8.x.y	2.x (gcc 4.0, 4.0.1 from 2.2)
# Leopard	10.5.x	9.x.y	3.x (gcc 4.0.1, 4.0.1 and 4.2.1 from 3.1)
# Snow Leopard	10.6.x	10.x.y	3.2+ (gcc 4.0.1 and 4.2.1)
# Lion		10.7.x	11.x.y	4.1 (llvm gcc 4.2.1)

# Tiger (and earlier) use Xfree 4.4.0 (and earlier)
.if empty(MACHINE_PLATFORM:MDarwin-[0-8].*-*)
X11_TYPE?=	native
.endif

.if !defined(CPP) || ${CPP} == "cpp"
CPP=		${CC} -E ${CPP_PRECOMP_FLAGS}
.endif
.if empty(MACHINE_PLATFORM:MDarwin-[0-8].*-*)
ECHO_N?=	/bin/echo -n
.else
ECHO_N?=	${ECHO} -n
.endif
LDD?=		/usr/bin/otool -L
IMAKE_MAKE?=	${MAKE}		# program which gets invoked by imake
PKGLOCALEDIR?=	share
PS?=		/bin/ps
# XXX: default from defaults/mk.conf.  Verify/correct for this platform
# and remove this comment.
SU?=		/usr/bin/su
TYPE?=		type				# Shell builtin
IMAKEOPTS+=	-DBuildHtmlManPages=NO
.if defined(UNPRIVILEGED) && !empty(UNPRIVILEGED:M[Yy][Ee][Ss])
IMAKEOPTS+=	-DInstallFlags=-c		# do not set user or group
.endif

.if !defined(PKGSRC_COMPILER) || !empty(PKGSRC_COMPILER:Mgcc)
# Use the GNU cpp, not the OS X cpp, don't look in "/usr/local/include"
# before "/usr/include".
CPP_PRECOMP_FLAGS?=	-no-cpp-precomp	-isystem /usr/include
# don't symlink to /usr/bin/gcc since the latter is a wrapper that tries
# evoke the real (architecture-dependent) gcc binary in the same place
# which fails when called via a symlink from a different directory
COMPILER_USE_SYMLINKS?=	no
.endif
DEF_UMASK?=		0022
DEFAULT_SERIAL_DEVICE?=	/dev/null
EXPORT_SYMBOLS_LDFLAGS?=	# Don't add symbols to the dynamic symbol table
MOTIF_TYPE_DEFAULT?=	openmotif	# default 2.0 compatible libs type
NOLOGIN?=		/usr/bin/false
PKG_TOOLS_BIN?=		${LOCALBASE}/sbin
ROOT_CMD?=		/usr/bin/sudo ${SH} -c
ROOT_GROUP?=		wheel
ROOT_USER?=		root
SERIAL_DEVICES?=	/dev/null
ULIMIT_CMD_datasize?=	ulimit -d `ulimit -H -d`
ULIMIT_CMD_stacksize?=	ulimit -s `ulimit -H -s`
ULIMIT_CMD_memorysize?=	ulimit -m `ulimit -H -m`

GROUPADD?=		${LOCALBASE}/sbin/groupadd
USERADD?=		${LOCALBASE}/sbin/useradd
_PKG_USER_HOME?=	/var/empty	# to match other system accounts
_USER_DEPENDS=		user>=20040801:../../sysutils/user_darwin

# imake installs manpages in weird places
# these values from /usr/X11R6/lib/X11/config/Imake.tmpl
IMAKE_MAN_SOURCE_PATH=	man/man
IMAKE_MAN_SUFFIX=	1
IMAKE_LIBMAN_SUFFIX=	3
IMAKE_FILEMAN_SUFFIX=	5
IMAKE_GAMEMAN_SUFFIX=	6
IMAKE_MAN_DIR=		${IMAKE_MAN_SOURCE_PATH}1
IMAKE_LIBMAN_DIR=	${IMAKE_MAN_SOURCE_PATH}3
IMAKE_FILEMAN_DIR=	${IMAKE_MAN_SOURCE_PATH}5
IMAKE_GAMEMAN_DIR=	${IMAKE_MAN_SOURCE_PATH}6
IMAKE_MANNEWSUFFIX=	${IMAKE_MAN_SUFFIX}
IMAKE_MANINSTALL?=	maninstall catinstall

_OPSYS_EMULDIR.darwin=	# empty

.if ${OS_VERSION:R} >= 6
_OPSYS_HAS_INET6=	yes	# IPv6 is standard
.else
_OPSYS_HAS_INET6=	no	# IPv6 is not standard
.endif
_OPSYS_HAS_JAVA=	yes	# Java is standard
_OPSYS_HAS_MANZ=	yes	# MANZ controls gzipping of man pages
_OPSYS_HAS_OSSAUDIO=	no	# libossaudio is available
_OPSYS_PERL_REQD=	5.8.0	# base version of perl required
_OPSYS_PTHREAD_AUTO=	yes	# -lpthread not needed for pthreads
_OPSYS_LINKER_RPATH_FLAG=	-L	# darwin has no rpath, use -L instead
_OPSYS_COMPILER_RPATH_FLAG=	-L	# compiler flag to pass rpaths to linker
_OPSYS_SHLIB_TYPE=	dylib	# shared lib type
_PATCH_CAN_BACKUP=	yes	# native patch(1) can make backups
_PATCH_BACKUP_ARG?=	-V simple -b -z	# switch to patch(1) for backup suffix
_USE_RPATH=		no	# don't add rpath to LDFLAGS

# flags passed to the linker to extract all symbols from static archives.
# this is GNU ld.
_OPSYS_WHOLE_ARCHIVE_FLAG=	-Wl,--whole-archive
_OPSYS_NO_WHOLE_ARCHIVE_FLAG=	-Wl,--no-whole-archive

_OPSYS_CAN_CHECK_SHLIBS=	no # can't use readelf in check/bsd.check-vars.mk

_STRIPFLAG_CC?=		${_INSTALL_UNSTRIPPED:D:U-Wl,-x} # cc(1) option to strip
_STRIPFLAG_INSTALL?=	${_INSTALL_UNSTRIPPED:D:U-s}	# install(1) option to strip

# check for maximum command line length and set it in configure's environment,
# to avoid a test required by the libtool script that takes forever.
_OPSYS_MAX_CMDLEN_CMD=	/usr/sbin/sysctl -n kern.argmax

# Darwin 7.7.x has poll() in libc, but no poll.h. Try to help GNU
# configure packages that break because of this by pretending that
# there is no poll().
.if defined(GNU_CONFIGURE)
.  if !exists(/usr/include/poll.h) && !exists(/usr/include/sys/poll.h)
CONFIGURE_ENV+=		ac_cv_func_poll=no
.  endif
.endif

# Use "/bin/ksh" for buildlink3 wrapper script to improve build performance.
.if empty(OS_VERSION:M[0-8].*) && exists(/bin/ksh)
WRAPPER_BIN_SH?=	/bin/ksh
.endif
