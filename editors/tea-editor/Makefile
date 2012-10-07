# $NetBSD$
#

DISTNAME=	tea-33.3.0
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tea-editor/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE
HOMEPAGE=	http://ftp.heanet.ie/disk1/sourceforge/t/te/tea-editor/tea-editor/33.1.0/
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	c c++

do-configure:
	(cd ${WRKSRC} && ${QTDIR$}/bin/qmake PREFIX=${DESTDIR}${PREFIX}/bin)
	

.include "../../textproc/hunspell/buildlink3.mk"
BUILDLINK_API_DEPENDS.qt4-libs+=	qt4-libs>=4.4.0
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../textproc/hunspell/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
