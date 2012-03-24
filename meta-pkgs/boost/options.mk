# $NetBSD: options.mk,v 1.1 2009/03/03 08:57:58 jmmv Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.boost
PKG_SUPPORTED_OPTIONS=	debug expat icu

.include "../../mk/bsd.options.mk"

.if ${BOOST_PACKAGE} == "libs"

.if !empty(PKG_OPTIONS:Mexpat)
MAKE_ENV+=		EXPAT_INCLUDE=${PREFIX}/include
MAKE_ENV+=		EXPAT_LIBPATH=${PREFIX}/lib
.  include "../../textproc/expat/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Micu)
MAKE_ENV+=		ICU_PATH=${PREFIX}
.  include "../../textproc/icu/buildlink3.mk"
.endif

.endif # ${BOOST_PACKAGE} == "libs"
