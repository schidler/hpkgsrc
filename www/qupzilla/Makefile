# $NetBSD$
#

DISTNAME=	QupZilla-1.3.5
PKGNAME=	qupzilla-1.3.5
CATEGORIES=	www
MASTER_SITES=	http://cloud.github.com/downloads/QupZilla/qupzilla/

MAINTAINER=	admin@freenet59.ru
HOMEPAGE=	http://www.qupzilla.com/
COMMENT=	QupZilla is a web browser using Qt and Webkit
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	c++ g++
USE_LIBTOOL=    NO
DEPENDS+=     qt4-sqlite3>=4.6.2:../../x11/qt4-sqlite3

MAKE_ENV += QUPZILLA_PREFIX=${PREFIX}/
INSTALL_ENV+=		INSTALL_ROOT=${DESTDIR}

DATADIR=	data

SUBST_CLASSES+=		path themes

SUBST_MESSAGE.themes=	Fixing hardcoded themes path.
SUBST_STAGE.themes=	pre-configure
SUBST_FILES.themes=	src/defines.pri
SUBST_SED.themes=		-e 's,/usr/share,${PREFIX}/${DATADIR},g'

SUBST_MESSAGE.path=	Fixing hardcoded data path.
SUBST_STAGE.path=	pre-configure
SUBST_FILES.path=	src/defines.pri
SUBST_SED.path=		-e 's,share,${DATADIR},g'

do-configure:
	(cd ${WRKSRC} && ${QTDIR$}/bin/qmake)
post-install:
	cp -f ${WRKSRC}/bin/qupzilla ${DESTDIR}${PREFIX}/bin/
	
.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
