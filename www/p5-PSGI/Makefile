# $NetBSD: Makefile,v 1.4 2012/10/03 21:58:55 wiz Exp $

DISTNAME=	PSGI-1.03
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/M/MI/MIYAGAWA/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/PSGI/
COMMENT=	Perl Web Server Gateway Interface Specification
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=	# empty
PERL5_PACKLIST= auto/PSGI/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
