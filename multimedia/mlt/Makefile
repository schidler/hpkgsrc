# $NetBSD: Makefile,v 1.16 2012/10/08 09:21:09 asau Exp $
#

DISTNAME=	mlt-0.5.10
PKGREVISION=	14
CATEGORIES=	multimedia
MASTER_SITES=	http://downloads.sourceforge.net/project/mlt/mlt/

MAINTAINER=	abs@NetBSD.org
HOMEPAGE=	http://www.mltframework.org/twiki/bin/view/MLT/
COMMENT=	Open source multimedia framework
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	pkg-config gmake
USE_LANGUAGES=	c c++
GNU_CONFIGURE=	YES
CONFIGURE_ARGS+=	--enable-gpl

PKGCONFIG_OVERRIDE+=	mlt-0.5.10/mlt++.pc.in
PKGCONFIG_OVERRIDE+=	mlt-0.5.10/mlt-framework.pc.in

.include "../../audio/ladspa/buildlink3.mk"
.include "../../audio/libsamplerate/buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../audio/sox/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../multimedia/ffmpeg/buildlink3.mk"
.include "../../multimedia/libdv/buildlink3.mk"
.include "../../multimedia/xine-lib/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
