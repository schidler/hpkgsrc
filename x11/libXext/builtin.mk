# $NetBSD: builtin.mk,v 1.3 2008/10/06 18:20:41 tron Exp $

BUILTIN_PKG:=	libXext
PKGCONFIG_FILE.libXext=	${X11BASE}/lib/pkgconfig/xext.pc

.include "../../mk/buildlink3/pkgconfig-builtin.mk"
.include "../../mk/x11.builtin.mk"
