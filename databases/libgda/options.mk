# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.libgda
PKG_SUPPORTED_OPTIONS=	fam

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mfam)
.  include "../../mk/fam.buildlink3.mk"
.endif
