# $NetBSD: Makefile,v 1.21 2012/10/03 21:55:13 wiz Exp $

DISTNAME=	Log-Dispatch-Config-1.04
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
SVR4_PKGNAME=	p5ldi
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Log/}

MAINTAINER=	rhaen@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Log-Dispatch-Config/
COMMENT=	Configure Log::Dispatch with a config file, a la Java's log4j
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Test-Simple>=0.41:../../devel/p5-Test-Simple
DEPENDS+=	p5-IO-stringy>=2.108:../../devel/p5-IO-stringy
DEPENDS+=	p5-AppConfig>=1.52:../../devel/p5-AppConfig
DEPENDS+=	p5-Log-Dispatch>=2.00:../../devel/p5-Log-Dispatch

PERL5_PACKLIST=		auto/Log/Dispatch/Config/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
