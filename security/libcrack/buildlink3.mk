# $NetBSD: buildlink3.mk,v 1.10 2006/07/08 23:11:07 jlam Exp $

BUILDLINK_TREE+=	libcrack

.if !defined(LIBCRACK_BUILDLINK3_MK)
LIBCRACK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libcrack+=	libcrack>=2.7
BUILDLINK_ABI_DEPENDS.libcrack+=	libcrack>=2.7nb1
BUILDLINK_PKGSRCDIR.libcrack?=	../../security/libcrack
.endif # LIBCRACK_BUILDLINK3_MK

BUILDLINK_TREE+=	-libcrack
