# $NetBSD: options.mk,v 1.3 2010/11/10 21:00:49 adam Exp $
#

PKG_OPTIONS_VAR=	PKG_OPTIONS.libiconv
PKG_SUPPORTED_OPTIONS=	libiconv-cp932
PKG_SUGGESTED_OPTIONS=	libiconv-cp932

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mlibiconv-cp932)
# http://www2d.biglobe.ne.jp/~msyk/software/libiconv-patch.html
PATCH_SITES=	http://www2d.biglobe.ne.jp/~msyk/software/libiconv/
PATCHFILES=	libiconv-1.13-cp932.patch.gz
PATCH_DIST_STRIP=	-p1
.endif
