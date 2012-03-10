# $NetBSD: Makefile,v 1.23 2011/11/01 06:11:56 sbd Exp $

PKG_DESTDIR_SUPPORT=	user-destdir

.include "Makefile.common"

PKGNAME=	mplayer-share-${MPLAYER_VERSION}
PKGREVISION=	4
COMMENT=	Documentation used by mplayer and gmplayer

DEPENDS+=	mplayer-fonts-[0-9]*:../../fonts/mplayer-fonts

USE_TOOLS+=	pax

NO_BUILD=	YES
NO_CONFIGURE=	YES

INSTALLATION_DIRS=	${PKGMANDIR}/man1 data/mplayer/DOCS

do-install:
	${INSTALL_MAN} ${WRKSRC}/DOCS/man/en/mplayer.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_DATA} ${WRKSRC}/etc/codecs.conf ${DESTDIR}${PREFIX}/data/mplayer
	${INSTALL_DATA} ${WRKSRC}/etc/input.conf ${DESTDIR}${PREFIX}/data/mplayer
	${INSTALL_DATA} ${WRKSRC}/etc/menu.conf ${DESTDIR}${PREFIX}/data/mplayer
	${INSTALL_DATA} ${WRKSRC}/etc/example.conf ${DESTDIR}${PREFIX}/data/mplayer
	(cd ${WRKSRC}/DOCS && \
		pax -rwpppm * ${DESTDIR}${PREFIX}/data/mplayer/DOCS); \
	${FIND} ${DESTDIR}${PREFIX}/data/mplayer/DOCS -type d -print | \
		${XARGS} ${CHMOD} ${PKGDIRMODE}
	${FIND} ${DESTDIR}${PREFIX}/data/mplayer/DOCS -type f -print | \
		${XARGS} ${CHMOD} ${SHAREMODE}

.include "../../mk/bsd.pkg.mk"
