# $NetBSD: options.mk,v 1.2 2010/11/22 13:31:05 obache Exp $
#

PKG_OPTIONS_VAR=	PKG_OPTIONS.eekboard
PKG_SUPPORTED_OPTIONS=	clutter
PKG_SUGGESTED_OPTIONS=	clutter

.include "../../mk/bsd.options.mk"

PLIST_VARS+=	clutter

.if !empty(PKG_OPTIONS:Mclutter)
PLIST.clutter=	yes
.include "../../graphics/clutter/buildlink3.mk"
.include "../../graphics/clutter-gtk/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-clutter=yes
.else
CONFIGURE_ARGS+=	--enable-clutter=no
.endif
