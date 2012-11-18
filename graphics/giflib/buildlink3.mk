# $NetBSD: buildlink3.mk,v 1.2 2011/01/18 11:57:53 drochner Exp $

.if !defined(MK_GIFLIB_BUILDLINK3_MK)
PKG_FAIL_REASON= "please use giflib.buildlink3.mk"
.endif

BUILDLINK_TREE+=	giflib

.if !defined(GIFLIB_BUILDLINK3_MK)
GIFLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.giflib+=	giflib>=4.1.6
BUILDLINK_PKGSRCDIR.giflib?=	../../graphics/giflib
.endif	# GIFLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-giflib
