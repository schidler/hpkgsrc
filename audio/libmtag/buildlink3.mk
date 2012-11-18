# $NetBSD$

BUILDLINK_TREE+=	libmtag

.if !defined(LIBMTAG_BUILDLINK3_MK)
LIBMTAG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libmtag+=	libmtag>=0.2.0
BUILDLINK_PKGSRCDIR.libmtag?=	../../audio/libmtag

.include "../../audio/taglib/buildlink3.mk"
.endif	# LIBMTAG_BUILDLINK3_MK

BUILDLINK_TREE+=	-libmtag
