# $NetBSD: options.mk,v 1.7 2012/01/20 17:07:38 drochner Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.libgcrypt
PKG_SUPPORTED_OPTIONS=	idea

.include "../../mk/bsd.prefs.mk"

.if ${MACHINE_ARCH} == "i386" && ${OPSYS} != "Darwin"
.  include "../../mk/compiler.mk"
# GCC 3.x (at least 3.3.3 on NetBSD) fails to compile asm() call in
# cipher/rijndael.c:do_padlock()
.  if empty(CC_VERSION:Mgcc-3.*)
PKG_SUPPORTED_OPTIONS+=	via-padlock
# With GCC 4.1.3 on NetBSD, do_padlock() crashes with signal 11
.    if ${OPSYS} != "NetBSD"
PKG_SUGGESTED_OPTIONS+=	via-padlock
.    endif
.  endif
.endif

.include "../../mk/bsd.options.mk"

.if empty(PKG_OPTIONS:Mvia-padlock)
# Disable VIA Padlock support.
CONFIGURE_ARGS+=	--disable-padlock-support
.endif

.if !empty(PKG_OPTIONS:Midea)
# use of IDEA as crypto function
DISTFILES+=	gcrypt.tar.bz2
SITES.gcrypt.tar.bz2=	http://www.kfwebs.com/
CFLAGS+=	-DUSE_IDEA
MAKE_ENV+=	IDEAOBJECT=idea.lo
USE_TOOLS+=	patch
post-patch:	ideapatch
ideapatch:
	cd ${WRKDIR} && ${PATCH} <${FILESDIR}/idea-patch && \
	${CP} idea.c ${WRKSRC}/cipher
.endif
