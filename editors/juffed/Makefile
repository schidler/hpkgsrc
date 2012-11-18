# $NetBSD$
#

DISTNAME=	juffed-0.9.1137-1
PKGTNAME=	juffed-0.9.11
CATEGORIES=	editors
MASTER_SITES=	http://ftp.heanet.ie/disk1/sourceforge/j/ju/juffed/Development%20versions/0.9.1137/

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE
HOMEPAGE=	http://ftp.heanet.ie/disk1/sourceforge/j/ju/juffed/Development%20versions/0.9.1137/
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/juffed-0.9.1137
USE_CMAKE=	yes
USE_LANGUAGES=	c c++

#CMAKE_ARGS+= -DCMAKE_BUILD_TYPE=debug
CMAKE_ARGS+= -DCMAKE_INSTALL_PREFIX=${PREFIX}
CMAKE_ARGS+= -DDATA_INSTALL_DIR=${PREFIX}/data/juffed
	
BUILDLINK_API_DEPENDS.qt4-libs+=	qt4-libs>=4.4.0
.include "../../x11/qt4-qscintilla/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
