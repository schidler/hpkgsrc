# $NetBSD: Makefile,v 1.59 2012/10/06 11:54:54 asau Exp $
#

DISTNAME=	sirius-0.8.0
PKGREVISION=	33
CATEGORIES=	games gnome
MASTER_SITES=	http://sirius.bitvis.nu/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://sirius.bitvis.nu/
COMMENT=	Othello game for GNOME2

GNU_CONFIGURE=		YES
USE_TOOLS+=		gmake intltool msgfmt pkg-config
USE_LIBTOOL=		YES
USE_PKGLOCALEDIR=	YES

.include "../../devel/GConf/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../graphics/libgnomecanvas/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
