# $NetBSD: Makefile,v 1.10 2010/03/21 16:29:42 wiz Exp $

PKG_DESTDIR_SUPPORT=	user-destdir

.include "Makefile.common"

DISTNAME=	foomatic-filters-ppds-${FOOMATIC_PPDS_VERSION}
PKGNAME=	${DISTNAME:S/-filters-/-/}

# The definitive location of the distfile is at www.linuxprinting.org,
# but this tarball is regenerated daily from the Foomatic database.
# Rather than track this file very aggressively, we'll place a new
# copy at MASTER_SITE_LOCAL periodically and update this package
# accordingly.
#
MASTER_SITES=	${MASTER_SITE_LOCAL} \
		http://www.linuxprinting.org/download/foomatic/

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Foomatic PPDs collection

DEPENDS=	foomatic-filters>=3.0.2:../../print/foomatic-filters

REQD_DIRS=	data/foomatic

CHECK_PORTABILITY_SKIP=		install

GENERATE_PLIST+=							\
	( cd ${WRKSRC}/share;						\
	  ${FIND} ppd -type f -print | ${SORT} -u |			\
	  ${SED} -e "s|^|data/foomatic/|" );

NO_BUILD=	yes

INSTALLATION_DIRS+=	data/foomatic

do-install:
	${CP} -R ${WRKSRC}/share/ppd ${DESTDIR}${PREFIX}/data/foomatic

.include "../../mk/bsd.pkg.mk"
