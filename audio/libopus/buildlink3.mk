# $NetBSD$

BUILDLINK_TREE+=	opus

.if !defined(OPUS_BUILDLINK3_MK)
OPUS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.opus+=	opus>=1.0.1
BUILDLINK_PKGSRCDIR.opus?=	../../audio/libopus
.endif	# OPUS_BUILDLINK3_MK

BUILDLINK_TREE+=	-opus
