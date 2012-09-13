# $NetBSD: Makefile,v 1.87 2012/07/02 18:44:31 drochner Exp $

# XXX This is release 0.7.13 but we had date-based pkgnames before.
PKGNAME=	ffmpeg-20120609.${DISTVERSION}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ffmpeg.mplayerhq.hu/
COMMENT=	Decoding, encoding and streaming software

PKG_DESTDIR_SUPPORT=	user-destdir

CONFIGURE_ARGS+=	--enable-avfilter
#CONFIGURE_ARGS+=	--enable-avfilter-lavf
CONFIGURE_ARGS+=	--enable-postproc

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} != "Haiku"
INSTALLATION_DIRS=	lib share/examples/ffmpeg share/doc/ffmpeg
CONF_FILES+=	${PREFIX}/share/examples/ffmpeg/ffserver.conf \
		${PKG_SYSCONFDIR}/ffserver.conf
.else
CONFIGURE_ARGS+=	--datadir=${PREFIX}/data/ffmpeg
INSTALLATION_DIRS=	lib documentation/examples/ffmpeg documentation/doc/ffmpeg
CONF_FILES+=	${PREFIX}/documentation/examples/ffmpeg/ffserver.conf \
		${PKG_SYSCONFDIR}/ffserver.conf
.endif

.if ${OPSYS} == "Darwin"
CONFIGURE_ARGS+=	--disable-asm
.endif

TEST_TARGET=	check

post-install:
.if ${OPSYS} != "Haiku"
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/doc/TODO \
		${DESTDIR}${PREFIX}/share/doc/ffmpeg
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt \
		${DESTDIR}${PREFIX}/share/doc/ffmpeg
	${INSTALL_DATA} ${WRKSRC}/doc/ffserver.conf \
		${DESTDIR}${PREFIX}/share/examples/ffmpeg
.else
	${INSTALL_DATA} ${WRKSRC}/README \
		${DESTDIR}${PREFIX}/documentation/doc/ffmpeg
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt \
		${DESTDIR}${PREFIX}/documentation/doc/ffmpeg
	${INSTALL_DATA} ${WRKSRC}/doc/ffserver.conf \
		${DESTDIR}${PREFIX}/documentation/examples/ffmpeg
.endif		
		
.include "options.mk"

.include "../../mk/compiler.mk"

.if !empty(PKGSRC_COMPILER:Mclang)
CFLAGS+=	-no-integrated-as
.endif

.include "../../multimedia/ffmpeg/Makefile.common"
