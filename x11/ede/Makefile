# $NetBSD: Makefile,v 1.16 2012/10/23 10:24:16 wiz Exp $
#

DISTNAME=	ede-1.0.4
PKGREVISION=	9
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ede/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ede.sourceforge.net/
COMMENT=	Equinox Desktop Environment
LICENSE=	gnu-gpl-v2

WRKSRC=			${WRKDIR}/ede
USE_LANGUAGES=		c c++
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake msgfmt
GNU_CONFIGURE=		yes

INSTALLATION_DIRS+=	bin

.include "../../x11/efltk/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
