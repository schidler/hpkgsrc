# $NetBSD: buildlink3.mk,v 1.10 2006/07/08 23:10:50 jlam Exp $

BUILDLINK_TREE+=	cal3d

.if !defined(CAL3D_BUILDLINK3_MK)
CAL3D_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.cal3d+=	cal3d>=0.9.1
BUILDLINK_ABI_DEPENDS.cal3d+=	cal3d>=0.9.1nb2
BUILDLINK_PKGSRCDIR.cal3d?=	../../graphics/cal3d

.include "../../graphics/Mesa/buildlink3.mk"
.endif # CAL3D_BUILDLINK3_MK

BUILDLINK_TREE+=	-cal3d
