# $NetBSD: Makefile,v 1.13 2012/02/06 12:40:25 wiz Exp $

DISTNAME=	gocr-0.47
PKGREVISION=	5
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jocr/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://sourceforge.net/projects/jocr
COMMENT=	GOCR is a set of OCR tools

GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake
CONFIGURE_HAS_MANDIR=	no
CONFIGURE_ARGS+=	--mandir=${PREFIX}/${PKGMANDIR}
CONFIGURE_ARGS+=	--with-netpbm=${BUILDLINK_PREFIX.netpbm}

INSTALLATION_DIRS=	bin include lib ${PKGMANDIR}/man1
INSTALL_MAKE_FLAGS+=	DESTDIR=${DESTDIR}

.include "options.mk"

.include "../../graphics/netpbm/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
