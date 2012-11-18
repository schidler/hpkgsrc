# $NetBSD: options.mk,v 1.4 2005/06/01 18:02:46 jlam Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.atari800
PKG_SUPPORTED_OPTIONS=	sdl x11
PKG_SUGGESTED_OPTIONS=	sdl

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mx11)
CONFIGURE_ARGS+=	--target=x11
.include "../../x11/libX11/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Msdl)
CONFIGURE_ARGS+=	--target=sdl
.include "../../devel/SDL/buildlink3.mk"
.endif
