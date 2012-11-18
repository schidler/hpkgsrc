# $NetBSD: buildlink3.mk,v 1.8 2006/07/08 23:10:46 jlam Exp $

BUILDLINK_TREE+=	libstatgrab

.if !defined(LIBSTATGRAB_BUILDLINK3_MK)
LIBSTATGRAB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libstatgrab+=	libstatgrab>=0.10
BUILDLINK_ABI_DEPENDS.libstatgrab+=	libstatgrab>=0.10.3nb1
BUILDLINK_PKGSRCDIR.libstatgrab?=	../../devel/libstatgrab
.endif # LIBSTATGRAB_BUILDLINK3_MK

BUILDLINK_TREE+=	-libstatgrab
