# $NetBSD: buildlink3.mk,v 1.20 2012/10/02 17:11:16 tron Exp $
#

BUILDLINK_TREE+=	libscigraphica

.if !defined(LIBSCIGRAPHICA_BUILDLINK3_MK)
LIBSCIGRAPHICA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libscigraphica+=	libscigraphica>=2.1.1
BUILDLINK_ABI_DEPENDS.libscigraphica+=	libscigraphica>=2.1.1nb19
BUILDLINK_PKGSRCDIR.libscigraphica?=	../../graphics/libscigraphica

.include "../../graphics/libart/buildlink3.mk"
.include "../../math/py-numarray/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk2+extra/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # LIBSCIGRAPHICA_BUILDLINK3_MK

BUILDLINK_TREE+=	-libscigraphica
