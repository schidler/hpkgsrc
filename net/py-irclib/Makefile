# $NetBSD$
#

IRCVERS=	3.4.2
DISTNAME=	irc-${IRCVERS}
PKGNAME=	${PYPKGPREFIX}-irclib-${IRCVERS}
CATEGORIES=	net python
MASTER_SITES=	http://pypi.python.org/packages/source/i/irc/
EXTRACT_SUFX=	.zip

MAINTAINER=	imil@NetBSD.org
HOMEPAGE=	https://bitbucket.org/jaraco/irc
COMMENT=	Internet Relay Chat (IRC) protocol client library
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# none

post-extract:
	cd ${WRKSRC} && ${CHMOD} ${SHAREMODE} irc.egg-info/*

.include "../../devel/py-hgtools/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
