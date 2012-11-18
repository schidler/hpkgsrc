# $NetBSD: buildlink3.mk,v 1.3 2008/10/31 22:36:28 bjs Exp $

BUILDLINK_TREE+=	libspiff

.if !defined(LIBSPIFF_BUILDLINK3_MK)
LIBSPIFF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libspiff+=	libspiff>=1.0.0
BUILDLINK_PKGSRCDIR.libspiff?=	../../audio/libspiff

.include "../../textproc/expat/buildlink3.mk"
.include "../../textproc/uriparser/buildlink3.mk"
.endif # LIBSPIFF_BUILDLINK3_MK

BUILDLINK_TREE+=	-libspiff
