# $NetBSD: buildlink3.mk,v 1.13 2010/01/18 09:59:05 wiz Exp $

BUILDLINK_TREE+=	mng

.if !defined(MNG_BUILDLINK3_MK)
MNG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mng+=		mng>=1.0.0
BUILDLINK_ABI_DEPENDS.mng+=	mng>=1.0.10nb2
BUILDLINK_PKGSRCDIR.mng?=	../../graphics/mng

.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/lcms/buildlink3.mk"
.endif # MNG_BUILDLINK3_MK

BUILDLINK_TREE+=	-mng
