# $NetBSD: toolset.mk,v 1.4 2010/10/30 09:29:58 adam Exp $

.if !empty(PKGSRC_COMPILER:Mgcc)
.  if ${OPSYS} == "Darwin"
BOOST_TOOLSET=		darwin
.  else
BOOST_TOOLSET=		gcc
.  endif
.elif !empty(PKGSRC_COMPILER:Mclang)
BOOST_TOOLSET=		clang
.elif !empty(PKGSRC_COMPILER:Mmipspro*)
BOOST_TOOLSET=		mipspro
.elif !empty(PKGSRC_COMPILER:Msunpro)
BOOST_TOOLSET=		sunpro
.else
PKG_FAIL_REASON+=	"Unknown compiler ${PKGSRC_COMPILER} for Boost."
.endif
