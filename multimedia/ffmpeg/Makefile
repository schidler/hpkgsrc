# $NetBSD: Makefile,v 1.74 2011/11/07 10:45:36 drochner Exp $

# XXX This is release 0.7.7 but we had date-based pkgnames before.
PKGNAME=	ffmpeg-20111104.${DISTVERSION}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ffmpeg.mplayerhq.hu/
COMMENT=	Decoding, encoding and streaming software

PKG_DESTDIR_SUPPORT=	user-destdir

CONFIGURE_ARGS+=	--enable-avfilter
#CONFIGURE_ARGS+=	--enable-avfilter-lavf
CONFIGURE_ARGS+=	--enable-postproc
CONFIGURE_ARGS+=	--enable-libvorbis
CONFIGURE_ARGS+=	--enable-libmp3lame
CONFIGURE_ARGS+=	--enable-libx264

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} != "Haiku"
INSTALLATION_DIRS=	lib share/examples/ffmpeg share/doc/ffmpeg
CONF_FILES+=	${PREFIX}/share/examples/ffmpeg/ffserver.conf \
		${PKG_SYSCONFDIR}/ffserver.conf
.else
INSTALLATION_DIRS=	lib data/examples/ffmpeg data/doc/ffmpeg
CONF_FILES+=	${PREFIX}/data/examples/ffmpeg/ffserver.conf \
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
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/doc/TODO \
		${DESTDIR}${PREFIX}/data/doc/ffmpeg
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt \
		${DESTDIR}${PREFIX}/data/doc/ffmpeg
	${INSTALL_DATA} ${WRKSRC}/doc/ffserver.conf \
		${DESTDIR}${PREFIX}/data/examples/ffmpeg

.endif

.include "options.mk"

# "lame-3.98" isn't compatible with "ffmpeg" which breaks audio encoding.
BUILDLINK_ABI_DEPENDS.lame+=	lame>=3.98.2nb1

.include "../../mk/compiler.mk"

.if !empty(PKGSRC_COMPILER:Mclang)
CFLAGS+=	-no-integrated-as
.endif

.include "../../audio/lame/buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../multimedia/ffmpeg/Makefile.common"
