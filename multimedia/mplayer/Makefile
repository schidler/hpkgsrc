# $NetBSD$
#

PKGNAME=	mplayer-${MPLAYER_VERSION}
PKGREVISION=	10

COMMENT=	Fast, cross-platform movie player

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	c c++

.include "../../multimedia/mplayer-share/Makefile.common"


USE_TOOLS+=	pkg-config


.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "x86_64"
BUILD_DEPENDS+=		yasm-[0-9]*:../../devel/yasm
.endif

CONFIGURE_ARGS+=	--disable-mencoder
CONFIGURE_ARGS+=	--confdir=${PREFIX}/data/mplayer
CONFIGURE_ARGS+=	--disable-mp3lib
CONFIGURE_ARGS+=	--enable-debug
INSTALLATION_DIRS+=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mplayer ${DESTDIR}${PREFIX}/bin


.include "../../multimedia/mplayer-share/Makefile.depends"

.include "../../mk/bsd.pkg.mk"
.include "../../multimedia/mplayer-share/Makefile.cflags"
