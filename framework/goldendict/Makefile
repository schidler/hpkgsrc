# $NetBSD$
#

DISTNAME=	goldendict-1.0.1-src
CATEGORIES=	framework
MASTER_SITES=	http://pkgs.fedoraproject.org/repo/pkgs/goldendict/goldendict-1.0.1-src.tar.bz2/d56bb854936015104029d1f0b98b61bb/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE
HOMEPAGE=	http://pkgs.fedoraproject.org/repo/pkgs/goldendict/goldendict-1.0.1-src.tar.bz2/d56bb854936015104029d1f0b98b61bb/
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

EXTRACT_DIR=	${WRKDIR}/goldendict
WRKSRC=		${EXTRACT_DIR}

#USE_TOOL=		
USE_LIBTOOL=		yes
USE_LANGUAGES=	c c++

pre-extract:
	@cd ${WRKDIR} && ${MKDIR} ${EXTRACT_DIR}

do-configure:
	(cd ${WRKSRC} && /boot/common/bin/qmake PREFIX=${PREFIX} goldendict.pro)

.include "../../textproc/hunspell/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
BUILDLINK_API_DEPENDS.qt4-libs+=	qt4-libs>=4.4.0
.include "../../framework/qt4-libs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
