# $NetBSD: Makefile,v 1.60 2012/02/06 12:40:27 wiz Exp $

DISTNAME=	imlib2-1.4.5
PKGREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	rh@NetBSD.org
HOMEPAGE=	http://docs.enlightenment.org/api/imlib2/html/
COMMENT=	Image manipulation library

USE_TOOLS+=		pkg-config
USE_LIBTOOL=		YES
GNU_CONFIGURE=		YES

PKGCONFIG_OVERRIDE=	imlib2.pc.in

LIBS.SunOS+=		-lm

.include "../../mk/bsd.prefs.mk"

.if ${OBJECT_FMT} == "SOM"
SHLIB_SUFFIX=		sl
.else
SHLIB_SUFFIX=		so
.endif

SUBST_CLASSES+=		shlib
SUBST_STAGE.shlib=	post-patch
SUBST_MESSAGE.shlib=	Replacing shared library suffix
SUBST_FILES.shlib+=	src/lib/image.c
SUBST_SED.shlib+=	-e 's,"\.so",".${SHLIB_SUFFIX}",'

.include "options.mk"

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/giflib.buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
