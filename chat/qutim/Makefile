# $NetBSD$
#

DISTNAME=	qutim-0.3.1
CATEGORIES=	chat
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

BUILDLINK_API_DEPENDS.qt4-libs+=	qt4-libs>=4.4.0
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../devel/libjreen/buildlink3.mk"
.include "../../textproc/hunspell/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
