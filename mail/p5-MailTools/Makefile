# $NetBSD: Makefile,v 1.55 2012/10/03 21:56:31 wiz Exp $

DISTNAME=	MailTools-2.11
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
SVR4_PKGNAME=	p5mto
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

MAINTAINER=	rhaen@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/MailTools/
COMMENT=	Perl5 modules related to mail applications
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews

BUILD_DEPENDS+=	p5-Net>=1.09:../../net/p5-Net
DEPENDS+=	p5-TimeDate-[0-9]*:../../time/p5-TimeDate

PERL5_PACKLIST=		auto/Mail/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
