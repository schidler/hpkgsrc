# $NetBSD: buildlink3.mk,v 1.17 2011/02/14 18:57:14 drochner Exp $

BUILDLINK_TREE+=	libebml

.if !defined(LIBEBML_BUILDLINK3_MK)
LIBEBML_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libebml+=	libebml>=0.8
BUILDLINK_ABI_DEPENDS.libebml+=	libebml>=1.2.0
BUILDLINK_PKGSRCDIR.libebml?=	../../devel/libebml
.endif # LIBEBML_BUILDLINK3_MK

BUILDLINK_TREE+=	-libebml
