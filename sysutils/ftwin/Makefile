# $NetBSD: Makefile,v 1.15 2012/03/03 00:13:55 wiz Exp $
#

DISTNAME=	ftwin-0.8.5
PKGREVISION=	10
CATEGORIES=	sysutils
MASTER_SITES=	http://download.meroware.org/ftwin/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	imil@gcu.info
HOMEPAGE=	http://jok.is-a-geek.net/ftwin.php
COMMENT=	Ftwin finds duplicate files according to their content

GNU_CONFIGURE=		yes

DOCDIR=			${PREFIX}/share/doc/ftwin

INSTALLATION_DIRS+=	${DOCDIR} ${PKGMANDIR}/man8

post-install:
	${INSTALL_DATA} ${WRKSRC}/EXAMPLES ${DESTDIR}${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/KNOWN_BUGS ${DESTDIR}${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${DESTDIR}${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${DOCDIR}

TEST_TARGET=	check

.include "../../archivers/libarchive/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
BUILDLINK_DEPMETHOD.check=	build
.include "../../devel/check/buildlink3.mk"
.include "../../devel/apr/buildlink3.mk"
.include "../../devel/apr-util/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../graphics/libpuzzle/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
