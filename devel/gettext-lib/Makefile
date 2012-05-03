# $NetBSD: Makefile,v 1.52 2011/04/12 17:41:28 adam Exp $

.include "../../devel/gettext/Makefile.common"

PKGNAME=	${DISTNAME:S/-/-lib-/}
SVR4_PKGNAME=	gttli
COMMENT=	Internationalized Message Handling Library (libintl)

USE_LANGUAGES=		c
USE_PKGDATADIR=		yes
CONFIGURE_ARGS+=	--with-included-gettext
CONFIGURE_ARGS+=	--disable-csharp
CONFIGURE_ENV+=		PKGLOCALEDIR=${PKGLOCALEDIR}
MAKE_ENV+=		PKGLOCALEDIR=${PKGLOCALEDIR}

CFLAGS+=		${CFLAGS.${ICONV_TYPE}-iconv}
CFLAGS.gnu-iconv+=	-DHAVE_GNU_ICONV

INSTALL_MAKE_FLAGS=	${MAKE_FLAGS} localedir=${EGDIR}

CONFIGURE_DIRS=		gettext-runtime

BUILD_DIRS=		gettext-runtime/intl
.include "../../mk/bsd.prefs.mk"
EGDIR=			${PREFIX}/documentation/examples/gettext
LOCALEDIR=		${PREFIX}/${PKGLOCALEDIR}/locale

REQD_DIRS+=		${LOCALEDIR}
REQD_FILES+=		${EGDIR}/locale.alias ${LOCALEDIR}/locale.alias

.include "../../converters/libiconv/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
