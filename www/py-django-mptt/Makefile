# $NetBSD: Makefile,v 1.2 2012/08/26 12:54:17 adam Exp $

DISTNAME=	django-mptt-0.5.4
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	www python
MASTER_SITES=	http://pypi.python.org/packages/source/d/django-mptt/

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://github.com/django-mptt/django-mptt
COMMENT=	Utilities for implementing Modified Preorder Tree Traversal
LICENSE=	mit

USE_LANGUAGES=		# empty
PYDISTUTILSPKG=		yes

DEPENDS+=	${PYPKGPREFIX}-django-[0-9]*:../../www/py-django

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
