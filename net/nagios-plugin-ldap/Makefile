# $NetBSD: Makefile,v 1.11 2011/04/22 13:44:25 obache Exp $
#

PKGNAME=	nagios-plugin-ldap-${PLUGINSVERSION}
PKGREVISION=	1
CATEGORIES=	net sysutils databases

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Nagios ldap plugin
LICENSE=	gnu-gpl-v3

DEPENDS+=	nagios-plugins-${PLUGINSVERSION}{,nb[0-9]*}:../../net/nagios-plugins

.include "../../net/nagios-plugins/Makefile.common"

BINARY_TARGET=	check_ldap

.include "../../net/nagios-plugins/Makefile.plugin"
.include "../../databases/openldap-client/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
