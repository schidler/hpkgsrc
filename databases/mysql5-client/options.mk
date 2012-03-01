# $NetBSD: options.mk,v 1.2 2009/02/11 00:16:41 adrianp Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.mysql5-client

PKG_SUPPORTED_OPTIONS=	ssl
PKG_SUGGESTED_OPTIONS=	ssl

.include "../../mk/bsd.options.mk"

###
### Enable OpenSSL support
###
.if !empty(PKG_OPTIONS:Mssl)
.	include "../../security/openssl/buildlink3.mk"
. if ${OPSYS} == "SunOS"
CHECK_BUILTIN.openssl:=yes
.  include "../../security/openssl/builtin.mk"
CHECK_BUILTIN.openssl:=no
.  if ${USE_BUILTIN.openssl} == "yes"
CONFIGURE_ARGS+=	--with-openssl=yes
CONFIGURE_ARGS+=	--with-openssl-libs=/lib
CONFIGURE_ARGS+=	--with-openssl-includes=/usr/include
.  endif
. else
CONFIGURE_ARGS+=	--with-openssl=${BUILDLINK_PREFIX.openssl}
. endif
.else
CONFIGURE_ARGS+=	--without-openssl
.endif
