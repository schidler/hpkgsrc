# $NetBSD: Makefile,v 1.3 2012/10/03 21:56:57 wiz Exp $
#

DISTNAME=	check_spamd-1.4.pl
PKGNAME=	nagios-plugin-spamd-${DISTNAME:S/check_spamd-//:S/.pl//}
PKGREVISION=	1
CATEGORIES=	net mail
MASTER_SITES=	# ftp://jhweiss.de/pub/users/weiss/nagios/plugins/
EXTRACT_SUFX=	# empty

MAINTAINER=	heinz@NetBSD.org
HOMEPAGE=	http://www.jhweiss.de/software/nagios.html
COMMENT=	Nagios plugin for monitoring the SpamAssassin daemon

DEPENDS+=		nagios-plugins-[0-9]*:../../net/nagios-plugins

WRKSRC=			${WRKDIR}
NO_BUILD=		yes

USE_TOOLS+=		perl:run

REPLACE_PERL+=		${DISTNAME}

PLUGIN_DIR=		${PREFIX}/libexec/nagios

SUBST_CLASSES+=		check_spamd
SUBST_STAGE.check_spamd=post-configure
SUBST_FILES.check_spamd=${DISTNAME}
SUBST_SED.check_spamd=	-e 's,/usr/local/nagios/libexec,${PLUGIN_DIR},'

INSTALLATION_DIRS+=	${PLUGIN_DIR}

do-extract:
	cp "${DISTDIR}/${DISTNAME}" "${WRKDIR}"

do-install:
	${INSTALL_SCRIPT} "${WRKDIR}/${DISTNAME}" \
		"${DESTDIR}${PLUGIN_DIR}/check_spamd"

.include "../../mk/bsd.pkg.mk"
