# $NetBSD: buildlink3.mk,v 1.8 2010/01/22 13:21:09 joerg Exp $

BUILDLINK_DEPMETHOD.libfetch?=	build

BUILDLINK_TREE+=	libfetch

.if !defined(LIBFETCH_BUILDLINK3_MK)
LIBFETCH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libfetch+=	libfetch>=2.28
BUILDLINK_PKGSRCDIR.libfetch?=	../../net/libfetch

pkgbase := libfetch
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.libfetch:Mopenssl)
.include "../../security/openssl/buildlink3.mk"
.endif
.endif # LIBFETCH_BUILDLINK3_MK

BUILDLINK_TREE+=	-libfetch
