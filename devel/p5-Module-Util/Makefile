# $NetBSD: Makefile,v 1.4 2012/10/03 21:55:17 wiz Exp $
#

DISTNAME=	Module-Util-1.07
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Module-Util/
COMMENT=	Module name tools and transformations
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Module/Util/.packlist
PERL5_MODULE_TYPE=	Module::Build

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
