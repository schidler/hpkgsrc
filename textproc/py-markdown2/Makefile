# $NetBSD: Makefile,v 1.3 2012/10/04 00:21:59 cheusov Exp $
#

DISTNAME=	markdown2-2.0.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	http://pypi.python.org/packages/source/m/markdown2/
EXTRACT_SUFX=	.zip

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	https://github.com/trentm/python-markdown2
COMMENT=	Fast and complete Python implementation of Markdown
LICENSE=	mit

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCLUDE_3X=	yes
PYTHON_SELF_CONFLICT=		yes

do-test:
	${RUN}cd ${WRKSRC}/test; ${SETENV} ${TEST_ENV} ${PYTHONBIN} test.py

.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
