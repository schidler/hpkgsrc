# $NetBSD$
#

DISTNAME=	libjreen-1.1.0
CATEGORIES=	devel
MASTER_SITES=	http://qutim.org/downloads/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE
HOMEPAGE=	http://qutim.org/downloads/
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

USE_CMAKE=	yes
USE_LANGUAGES=	c c++

CMAKE_ARGS+= -DCMAKE_INSTALL_PREFIX=${PREFIX}

.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../security/qca2/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
