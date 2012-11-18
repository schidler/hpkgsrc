# $NetBSD: buildlink3.mk,v 1.4 2009/09/11 22:31:01 joerg Exp $

BUILDLINK_TREE+=	evas-software-x11

.if !defined(EVAS_SOFTWARE_X11_BUILDLINK3_MK)
EVAS_SOFTWARE_X11_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.evas-software-x11+=	evas-software-x11>=1.1.0beta
BUILDLINK_PKGSRCDIR.evas-software-x11?=	../../graphics/evas-software-x11

.include "../../x11/libX11/buildlink3.mk"
.endif # EVAS_SOFTWARE_X11_BUILDLINK3_MK

BUILDLINK_TREE+=	-evas-software-x11
