# $NetBSD: buildlink3.mk,v 1.1.1.1 2006/11/03 17:38:16 joerg Exp $

BUILDLINK_DEPMETHOD.bigreqsproto?=	build

BUILDLINK_TREE+=	bigreqsproto

.if !defined(BIGREQSPROTO_BUILDLINK3_MK)
BIGREQSPROTO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.bigreqsproto+=	bigreqsproto>=1.0
BUILDLINK_PKGSRCDIR.bigreqsproto?=	../../x11/bigreqsproto
.endif # BIGREQSPROTO_BUILDLINK3_MK

BUILDLINK_TREE+=	-bigreqsproto
