# $NetBSD: Makefile,v 1.4 2012/10/02 21:25:47 asau Exp $

PKGNAME=	${DISTNAME:C/-/92-pgcrypto-/}
COMMENT=	Module providing cryptographic functions for PostgreSQL

DEPENDS+=	postgresql92-server>=${PKGVERSION_NOREV}:../../databases/postgresql92-server

.include "../../databases/postgresql92/Makefile.common"

CONFIGURE_ARGS+=	--with-zlib
BUILD_MAKE_FLAGS=	PGXS=1

BUILD_DIRS=		contrib/pgcrypto

.include "../../databases/postgresql92-client/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
