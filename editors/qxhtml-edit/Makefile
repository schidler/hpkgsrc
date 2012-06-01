# $NetBSD$
#

DISTNAME=	htmledit
PKGNAME=	qxhtml-edit
CATEGORIES=	editors
MASTER_SITES=	http://qxhtml-edit.googlecode.com/files/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE
HOMEPAGE=	http://code.google.com/p/qxhtml-edit/
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	c c++

pre-build:
	(cd ${WRKSRC} && ${QTDIR$}/bin/qmake)
	
do-install:
	${MKDIR} ${DESTDIR}${PREFIX}/bin
	cp -R ${WRKSRC}/edithtml ${DESTDIR}${PREFIX}/bin

BUILDLINK_API_DEPENDS.qt4-libs+=	qt4-libs>=4.4.0
.include "../../framework/qt4-tools/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
