# $NetBSD: Makefile,v 1.16 2011/10/25 09:05:27 obache Exp $
#

DISTNAME=	numarray-1.5.2
PKGNAME=	${PYPKGPREFIX}-numarray-1.5.2
PKGREVISION=	1
CATEGORIES=	math python
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=numpy/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.stsci.edu/resources/software_hardware/numarray
COMMENT=	Array manipulation

PLIST_VARS+=	blas
.if exists(/System/Library/Frameworks/vecLib.framework/Headers)
BUILDLINK_PASSTHRU_DIRS+=	/System/Library/Frameworks/vecLib.framework/Headers
PLIST.blas=	yes
.endif

do-test:
	(cd ${WRKSRC}/Lib && ${PYTHONBIN} testall.py)

.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
