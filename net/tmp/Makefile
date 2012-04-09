# $NetBSD$
#

DISTNAME=	libtorrent-rasterbar-0.15.10
CATEGORIES=	net
MASTER_SITES=	http://libtorrent.googlecode.com/files/

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE
HOMEPAGE=	http://code.google.com/p/libtorrent/
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_CMAKE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++

PKGCONFIG_OVERRIDE+=	libtorrent-rasterbar-cmake.pc.in
PKGCONFIG_OVERRIDE+=	libtorrent-rasterbar.pc.in

.include "../../mk/bsd.pkg.mk"
