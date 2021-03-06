# $NetBSD: Makefile,v 1.13 2012/10/03 21:54:29 wiz Exp $
#

DISTNAME=	cvs2p4-2.3.3
PKGREVISION=	1
CATEGORIES=	devel scm
MASTER_SITES=	ftp://public.perforce.com/public/perforce/utils/cvs2p4/
EXTRACT_SUFX=	.tar

MAINTAINER=	schmonz@NetBSD.org
HOMEPAGE=	# none
COMMENT=	Converts CVS repository to Perforce depot

DEPENDS+=	p4-[0-9]*:../../devel/p4
DEPENDS+=	p4d-[0-9]*:../../devel/p4d
.if !exists(/usr/bin/co) && !exists(${LOCALBASE}/bin/co)
DEPENDS+=	rcs-[0-9]*:../../devel/rcs
.endif

USE_TOOLS+=	perl:run
NO_BUILD=	yes

DOCDIR=		share/doc/${PKGBASE}
EGDIR=		share/examples/${PKGBASE}
LIBDIR=		lib/perl5
PLIST_SUBST+=	DOCDIR=${DOCDIR:Q}
PLIST_SUBST+=	EGDIR=${EGDIR:Q}

CVS2P4_INLIB=	$$Mydir/lib/util\.pl
CVS2P4_OUTLIB=	${LIBDIR}/${PKGBASE}-util.pl

INSTALLATION_DIRS=	bin ${LIBDIR}

SUBST_CLASSES+=		paths
SUBST_FILES.paths=	test/config
SUBST_SED.paths+=	-e 's,@PREFIX@,${PREFIX},g'
SUBST_SED.paths+=	-e 's,@P4PORT@,${P4PORT},g'
SUBST_SED.paths+=	-e 's,@P4ROOT@,${P4ROOT},g'
SUBST_STAGE.paths=	post-patch

do-configure:
	for f in ${WRKSRC}/bin/*; do \
		( ${ECHO} \#!${PERL5}; ${CAT} $${f} ) | ${SED} -e '2,5d' \
			-e 's|${CVS2P4_INLIB}|${PREFIX}/${CVS2P4_OUTLIB}|' \
			> $${f}.new; \
		${MV} -f $${f}.new $${f}; \
	done

do-install:
	${INSTALL_DATA} ${WRKSRC}/lib/util.pl \
		${DESTDIR}${PREFIX}/${CVS2P4_OUTLIB}
	${INSTALL_SCRIPT} ${WRKSRC}/bin/* ${DESTDIR}${PREFIX}/bin

	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/NEWS ${DESTDIR}${PREFIX}/${DOCDIR}

	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/test/config ${DESTDIR}${PREFIX}/${EGDIR}

.include "../../mk/bsd.pkg.mk"
