# $NetBSD: buildlink3.mk,v 1.2 2007/05/09 23:43:05 tnn Exp $

BUILDLINK_TREE+=	wavpack

.if !defined(WAVPACK_BUILDLINK3_MK)
WAVPACK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.wavpack+=	wavpack>=4.41.0
BUILDLINK_PKGSRCDIR.wavpack?=	../../audio/wavpack
.endif # WAVPACK_BUILDLINK3_MK

BUILDLINK_TREE+=	-wavpack
