# $NetBSD: Makefile,v 1.35 2012/10/08 23:02:27 adam Exp $
#

DISTNAME=		nautilus-sendto-2.32.0
PKGREVISION=		19
CATEGORIES=		sysutils gnome
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/nautilus-sendto/2.32/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.gnome.org/projects/nautilus/
COMMENT=		Convenience application to send a file via email or instant messenger
LICENSE=		gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake gsed intltool msgfmt pkg-config
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-plugins="evolution nautilus-burn pidgin removable-devices"

#XXX: needs libempathy-gtk >= 2.25.2
#.include "../../chat/empathy/buildlink3.mk"
# XXX: not in pkgsrc proper yet
#.include "../../wip/gajim/buildlink3.mk"
.include "../../chat/pidgin/buildlink3.mk"
.include "../../devel/glib2/schemas.mk"
.include "../../mail/evolution-data-server/buildlink3.mk"
.include "../../mail/evolution/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../sysutils/nautilus/buildlink3.mk"
# no gupnp-av package available
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
