# $NetBSD: Makefile,v 1.16 2012/05/03 09:55:33 obache Exp $

DISTNAME=	xmx-2.1alpha.pl7
PKGNAME=	xmx-2.1a7
PKGREVISION=	6
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.cs.brown.edu/pub/xmx/

PATCHFILES=	xmx-jumbo-patch-20120416.gz
PATCH_SITES=	http://www.NetBSD.org/~dholland/patchkits/xmx/
PATCH_DIST_STRIP= -p1

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.cs.brown.edu/software/xmx/
COMMENT=	X11 Protocol Multiplexor

MAKE_JOBS_SAFE=	no
USE_IMAKE=	yes

.include "../../mk/bsd.prefs.mk"

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/libXaw/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
