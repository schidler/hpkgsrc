# $NetBSD$
#

DISTNAME=	qbittorrent-3.0.5
CATEGORIES=	net
MASTER_SITES=	http://libtorrent.googlecode.com/files/ \
		${MASTER_SITE_SOURCEFORGE:=libtorrent/}
LICENSE=	modified-bsd

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE
HOMEPAGE=	http://www.qbittorrent.org
COMMENT=	qBittorrent is based on Qt4 toolkit and libtorrent-rasterbar

PKG_DESTDIR_SUPPORT=	user-destdir

HAS_CONFIGURE=	yes
USE_LANGUAGES=	c++
USE_TOOLS+=     pkg-config

SUBST_CLASSES+=		boost
SUBST_STAGE.boost=	pre-configure
SUBST_MESSAGE.boost=	Fix path to boost libs & headers
SUBST_FILES.boost=	qcm/libboost.qcm configure
SUBST_SED.boost=		-e "s|/usr/local|${PREFIX}|"

SUBST_CLASSES+=		data
SUBST_STAGE.data=	pre-configure
SUBST_MESSAGE.data=	Fix path to data files
SUBST_FILES.data=	unixconf.pri
SUBST_SED.data=		-e "s|/share/|/data/qbittorrent/|"

SUBST_CLASSES+=		man
SUBST_STAGE.man=	pre-configure
SUBST_MESSAGE.man=	Fix path to man files
SUBST_FILES.man=	qcm/qt4.qcm
SUBST_SED.man=		-e "s|share|${PKGMANDIR}|"

CONFIGURE_ARGS+=	--prefix=${PREFIX:Q}
CONFIGURE_ARGS+=	--qtdir=${QTDIR:Q}
CONFIGURE_ARGS+=	--datadir=${PREFIX:Q}/data


pre-build:
	cp -f ${PREFIX}/data/GeoIP/GeoIP.dat ${WRKSRC}/src/geoip/GeoIP.dat
	
INSTALL_MAKE_FLAGS=	INSTALL_ROOT=${DESTDIR}


.include "../../devel/boost-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../libtorrent-rasterbar/buildlink3.mk"
.include "../GeoIP/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
