# $NetBSD: Makefile,v 1.21 2012/10/08 23:02:37 adam Exp $

DISTNAME=	Wx-Perl-ProcessStream-0.32
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	x11 perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Wx/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Wx-Perl-ProcessStream/
COMMENT=	Access IO of external processes via events from WxWidgets
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Wx>=0.50:../../x11/p5-Wx

USE_TOOLS+=	perl

PERL5_PACKLIST=		auto/Wx/Perl/ProcessStream/.packlist

.include "../../x11/p5-Wx/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
