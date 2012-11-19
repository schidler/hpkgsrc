# $NetBSD: options.mk,v 1.3 2011/04/08 16:49:32 schnoebe Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.rdesktop
PKG_SUPPORTED_OPTIONS+=	inet6 ssl xrandr
PKG_SUGGESTED_OPTIONS+=	inet6 ssl xrandr

.include "../../mk/bsd.options.mk"

###
### Support both IPv6 and IPv4 connections.
###
.if !empty(PKG_OPTIONS:Minet6)
CONFIGURE_ARGS+=	--with-ipv6
.endif

.if !empty(PKG_OPTIONS:Mssl)
CONFIGURE_ARGS+=	--with-openssl=${SSLBASE}
.include "../../security/openssl/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mxrandr)
.include "../../x11/libXrandr/buildlink3.mk"
.endif
