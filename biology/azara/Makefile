# $NetBSD: Makefile,v 1.11 2012/10/21 17:53:09 cheusov Exp $
#

DISTNAME=		azara-2.7-src
PKGNAME=		azara-2.7
PKGREVISION=		4
CATEGORIES=		biology
MASTER_SITES=		http://www.ccpn.ac.uk/download/azara/

MAINTAINER=		mchittur@cs.nmsu.edu
HOMEPAGE=		http://www.ccpn.ac.uk/azara/
COMMENT=		Programs to process and view NMR data

CONFLICTS=		connect-[0-9]*

MAKE_JOBS_SAFE=		no

WRKSRC=			${WRKDIR}/azara-2.7
MAKE_FILE=		makefile

INSTALLATION_DIRS=	bin

PROGFILES=	azara bin2asc combine connect contours deflate \
	extract float2int int2float look_at look_byte look_for mat2par \
	par2mat peak_find peak_fit plot1 plot2 process project reflate \
	slides swap unblock viewer

do-install:
	set -e; cd ${WRKSRC}/bin; \
	${INSTALL_PROGRAM} ${PROGFILES} ${DESTDIR}${PREFIX}/bin

.include "../../graphics/glu/buildlink3.mk"
.include "../../graphics/glut/buildlink3.mk"
.include "../../mk/motif.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
