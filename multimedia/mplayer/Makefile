# $NetBSD: Makefile,v 1.86 2012/10/28 23:40:24 wiz Exp $

PKGNAME=	mplayer-${MPLAYER_VERSION}
PKGREVISION=	2

COMMENT=	Fast, cross-platform movie player

.include "../../multimedia/mplayer-share/Makefile.common"

USE_TOOLS+=	pkg-config


.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "x86_64"
BUILD_DEPENDS+=		yasm-[0-9]*:../../devel/yasm
.endif

CONFIGURE_ARGS+=	--disable-mencoder
CONFIGURE_ARGS+=	--confdir=${PREFIX}/share/mplayer
.if ${OPSYS} != "Haiku"
CONFIGURE_ARGS+=	--enable-xvmc
CONFIGURE_ARGS+=	--with-xvmclib=XvMCW
.endif
.if ${OPSYS} == "Haiku"
CONFIGURE_ARGS+=     --disable-mp3lib
.endif
# Solaris/x86 has Xv, but the header files live in /usr/X11R6, not
# ${X11_BASE}, so we need to also look for headers in this path.
.if ${OPSYS} == "SunOS" && ${MACHINE_ARCH} == "i386"
CPPFLAGS+=		-I/usr/X11R6/include
BUILDLINK_PASSTHRU_DIRS+=	/usr/X11R6/include
.endif

INSTALLATION_DIRS+=	bin

pre-build:
	cp -rf ${FILESDIR}/* ${WRKSRC}/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mplayer ${DESTDIR}${PREFIX}/bin

.if ${OPSYS} != "Haiku"
.include "../../x11/libXScrnSaver/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../x11/libXv/buildlink3.mk"
.include "../../x11/libXvMC/buildlink3.mk"
.include "../../x11/libXxf86dga/buildlink3.mk"
.include "../../x11/libXxf86vm/buildlink3.mk"

.include "../../graphics/MesaLib/buildlink3.mk"
.endif

.include "../../multimedia/mplayer-share/Makefile.depends"

.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
.include "../../multimedia/mplayer-share/Makefile.cflags"
