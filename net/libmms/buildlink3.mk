# $NetBSD: buildlink3.mk,v 1.2 2008/10/20 09:15:58 wiz Exp $

BUILDLINK_TREE+=	libmms

.if !defined(LIBMMS_BUILDLINK3_MK)
LIBMMS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libmms+=	libmms>=0.3
BUILDLINK_PKGSRCDIR.libmms?=	../../net/libmms
.endif # LIBMMS_BUILDLINK3_MK

BUILDLINK_TREE+=	-libmms
