# $NetBSD: Makefile,v 1.1.1.1 2011/12/05 17:41:22 joerg Exp $
#

DISTNAME=	e_dbus-1.1.0
PKGNAME=	edbus-1.1.0
CATEGORIES=	sysutils
MASTER_SITES=	http://download.enlightenment.org/releases/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	http://www.enlightenment.org/
COMMENT=	Convenience wrappers around dbus to ease integrating dbus with E17.

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

PKGCONFIG_OVERRIDE=	ehal.pc.in edbus.pc.in enm.pc.in enotify.pc.in

.include "../../devel/ecore/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/efreet/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
