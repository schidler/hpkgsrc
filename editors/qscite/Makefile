# $NetBSD$
#

DISTNAME=	qscite-r211
CATEGORIES=	editors
MASTER_SITES=	http://qscite.googlecode.com/files/

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE
HOMEPAGE=	http://code.google.com/p/qscite/
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/qscite
USE_LANGUAGES=	c++

pre-build:
	(cd ${WRKSRC} && ${QTDIR$}/bin/qmake)
	
do-install:
	${MKDIR} ${DESTDIR}${PREFIX}/bin
	cp -R ${WRKSRC}/build/qscite ${DESTDIR}${PREFIX}/bin

BUILDLINK_API_DEPENDS.qt4-libs+=	qt4-libs>=4.4.0
.include "../../framework/qt4-qscintilla/buildlink3.mk"
.include "../../framework/qt4-tools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
