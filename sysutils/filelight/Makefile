# $NetBSD: Makefile,v 1.33 2012/10/02 17:11:57 tron Exp $

DISTNAME=	filelight-${_KDE_VERSION}
PKGREVISION=	4
CATEGORIES=	sysutils
COMMENT=	Graphical filesystem usage monitor
LICENSE=	gnu-gpl-v3

.include "../../meta-pkgs/kde4/Makefile.kde4"

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
