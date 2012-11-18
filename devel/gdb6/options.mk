# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.gdb6
PKG_SUPPORTED_OPTIONS=	gdb6-tui
PKG_SUGGESTED_OPTIONS=	gdb6-tui

.include "../../mk/bsd.options.mk"

PLIST_VARS+=	tui
.if !empty(PKG_OPTIONS:Mgdb6-tui)
PLIST.tui=	yes
.include "../../mk/curses.buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-tui
.endif
