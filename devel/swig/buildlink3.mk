# $NetBSD: buildlink3.mk,v 1.10 2006/12/02 10:15:46 wulf Exp $

BUILDLINK_TREE+=	swig

.if !defined(SWIG_BUILDLINK3_MK)
SWIG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.swig+=	swig>=1.3.24
BUILDLINK_ABI_DEPENDS.swig+=	swig>=1.3.31
BUILDLINK_PKGSRCDIR.swig?=	../../devel/swig
# only contains a static library
BUILDLINK_DEPMETHOD.swig?=	build

BUILDLINK_FILES.swig+=		share/swig/1.3/* share/swig/1.3/*/*
.endif # SWIG_BUILDLINK3_MK

BUILDLINK_TREE+=	-swig
