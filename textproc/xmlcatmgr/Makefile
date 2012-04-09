# $NetBSD: Makefile,v 1.32 2010/01/16 23:37:49 heinz Exp $
#

DISTNAME=	xmlcatmgr-2.2
PKGREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmlcatmgr/}

MAINTAINER=	jmmv@NetBSD.org
HOMEPAGE=	http://xmlcatmgr.sourceforge.net/
COMMENT=	XML and SGML catalog manager
LICENSE=	modified-bsd

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	YES

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}
CONFIGURE_ARGS+=	--datadir=${PREFIX}/data
LIBS.Haiku+=	-lbsd

OWN_DIRS=	${PKG_SYSCONFDIR}/sgml ${PKG_SYSCONFDIR}/xml
EGDIR=		${PREFIX}/data/examples/xmlcatmgr
CONF_FILES=	${EGDIR}/catalog.etc.sgml ${PKG_SYSCONFDIR}/sgml/catalog
CONF_FILES+=	${EGDIR}/catalog.etc.xml ${PKG_SYSCONFDIR}/xml/catalog
CONF_FILES+=	${EGDIR}/catalog.share.sgml ${PREFIX}/data/sgml/catalog
CONF_FILES+=	${EGDIR}/catalog.share.xml ${PREFIX}/data/xml/catalog
REQD_DIRS=	${PREFIX}/data/sgml ${PREFIX}/data/xml

INSTALLATION_DIRS+=	data/examples/xmlcatmgr

post-build:
	@${ECHO} "Creating SGML catalogs..."
	@${WRKSRC}/xmlcatmgr -sc ${WRKDIR}/catalog.etc.sgml create
	@${WRKSRC}/xmlcatmgr -sc ${WRKDIR}/catalog.sgml create
	@${WRKSRC}/xmlcatmgr -sc ${WRKDIR}/catalog.etc.sgml add \
		CATALOG ${PREFIX}/data/sgml/catalog
	@${ECHO} "Creating XML catalogs..."
	@${WRKSRC}/xmlcatmgr -c ${WRKDIR}/catalog.etc.xml create
	@${WRKSRC}/xmlcatmgr -c ${WRKDIR}/catalog.xml create
	@${WRKSRC}/xmlcatmgr -c ${WRKDIR}/catalog.etc.xml add \
		nextCatalog ${PREFIX}/data/xml/catalog

post-install:
	${INSTALL_DATA} ${WRKDIR}/catalog.etc.sgml ${DESTDIR}${EGDIR}/catalog.etc.sgml
	${INSTALL_DATA} ${WRKDIR}/catalog.etc.xml ${DESTDIR}${EGDIR}/catalog.etc.xml
	${INSTALL_DATA} ${WRKDIR}/catalog.sgml ${DESTDIR}${EGDIR}/catalog.share.sgml
	${INSTALL_DATA} ${WRKDIR}/catalog.xml ${DESTDIR}${EGDIR}/catalog.share.xml

.include "../../mk/bsd.pkg.mk"
