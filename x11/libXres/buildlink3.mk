# $NetBSD: buildlink3.mk,v 1.3 2008/10/05 21:36:33 cube Exp $

.include "../../mk/bsd.fast.prefs.mk"

BUILDLINK_TREE+=	libXres

.if !defined(LIBXRES_BUILDLINK3_MK)
LIBXRES_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libXres+=	libXres>=1.0.0
BUILDLINK_PKGSRCDIR.libXres?=	../../x11/libXres

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/xproto/buildlink3.mk"
.endif # LIBXRES_BUILDLINK3_MK

BUILDLINK_TREE+=	-libXres
