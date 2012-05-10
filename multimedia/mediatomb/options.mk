# $NetBSD: options.mk,v 1.1 2008/04/11 14:41:27 agc Exp $
#

PKG_OPTIONS_VAR=	PKG_OPTIONS.mediatomb

PKG_SUPPORTED_OPTIONS=	javascript filemagic taglib ffmpeg ffmpegthumbnailer libexif curl

PKG_SUGGESTED_OPTIONS=	javascript filemagic taglib ffmpeg libexif curl

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mjavascript)
.include "../../lang/spidermonkey/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mfilemagic)
.	include "../../sysutils/file/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-libmagic
.endif

.if !empty(PKG_OPTIONS:Mtaglib)
.	include "../../audio/taglib/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-taglib
.endif


.if !empty(PKG_OPTIONS:Mffmpeg)
.	include "../../multimedia/ffmpeg/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-ffmpeg
.endif

.if !empty(PKG_OPTIONS:Mffmpegthumbnailer)
.  include "../../graphics/libcaca/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-ffmpegthumbnailer
.endif

.if !empty(PKG_OPTIONS:Mffmpegthumbnailer)
.  include "../../graphics/libcaca/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-ffmpegthumbnailer
.endif

.if !empty(PKG_OPTIONS:Mcurl)
.	include "../../www/curl/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-curl
.endif
