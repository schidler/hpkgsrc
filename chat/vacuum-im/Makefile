# $NetBSD$
#

DISTNAME=	vacuum-1.2.0
CATEGORIES=	chat
MASTER_SITES=	http://vacuum-im.googlecode.com/files/

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE
HOMEPAGE=	http://www.vacuum-im.org
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

PKG_DESTDIR_SUPPORT=	user-destdir

USE_CMAKE=	yes
USE_LANGUAGES=	c c++

CONFIGURE_DIRS=		build
CMAKE_ARG_PATH=	..

CMAKE_ARGS+= -DCMAKE_INSTALL_PREFIX=${PREFIX}
CMAKE_ARGS+= -DINSTALL_DOCUMENTS=${PREFIX}${PKGDOCDIR}

pre-configure:
	${MKDIR} ${WRKSRC}/build
	
post-install:
	${MKDIR} -p ${DESTDIR}${PREFIX}/${PKGDOCDIR}/doc
	mv ${DESTDIR}${PREFIX}/${PKGDATADIR}/doc \
	${DESTDIR}${PREFIX}/${PKGDOCDIR}/doc/${DISTNAME}

	

BUILDLINK_API_DEPENDS.qt4-libs+=	qt4-libs>=4.4.0
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../devel/libidn/buildlink3.mk"
.include "../../textproc/hunspell/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
