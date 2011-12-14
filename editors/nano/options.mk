# $NetBSD: options.mk,v 1.2 2008/02/21 21:56:29 jlam Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.nano
PKG_SUPPORTED_OPTIONS=	wide-curses
PKG_LEGACY_OPTS+=	ncursesw:wide-curses

.include "../../mk/bsd.options.mk"

###
### Wide curses support; otherwise, default to using narrow curses.
###
.if !empty(PKG_OPTIONS:Mwide-curses)
.  include "../../devel/ncursesw/buildlink3.mk"
.else
.  include "../../mk/curses.buildlink3.mk"
.endif
