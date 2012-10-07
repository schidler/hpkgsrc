# $NetBSD$
#

DISTNAME=	goldendict-1.0.1-src
PKGNAME=       goldendict-1.0.1
CATEGORIES=	framework
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=goldendict/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE
HOMEPAGE=	http://goldendict.org/
COMMENT=	A feature-rich dictionary lookup program
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

EXTRACT_DIR=	${WRKDIR}/goldendict
WRKSRC=		${EXTRACT_DIR}

#USE_TOOL=		
USE_LIBTOOL=		yes
USE_LANGUAGES=	c c++

MAKE_ENV += PREFIX=${PREFIX}
INSTALL_ENV+=		INSTALL_ROOT=${DESTDIR}

pre-extract:
	@cd ${WRKDIR} && ${MKDIR} ${EXTRACT_DIR}

do-configure:
	(cd ${WRKSRC} && PREFIX=${PREFIX} ${QTDIR$}/bin/qmake)	

#do-configure:
#	(cd ${WRKSRC} && && ${QTDIR$}/bin/qmake goldendict.pro)

.include "../../textproc/hunspell/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
BUILDLINK_API_DEPENDS.qt4-libs+=	qt4-libs>=4.4.0
.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
