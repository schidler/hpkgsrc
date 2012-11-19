# $NetBSD: buildlink3.mk,v 1.4 2009/09/10 02:03:11 dsainty Exp $

BUILDLINK_TREE+=	libass

.if !defined(LIBASS_BUILDLINK3_MK)
LIBASS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libass+=	libass>=0.9.12
BUILDLINK_PKGSRCDIR.libass?=	../../multimedia/libass
.endif # LIBASS_BUILDLINK3_MK

BUILDLINK_TREE+=	-libass
