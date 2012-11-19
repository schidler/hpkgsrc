# $NetBSD: buildlink3.mk,v 1.1.1.1 2009/01/04 00:21:36 adrianp Exp $

BUILDLINK_TREE+=	bind

.if !defined(BIND_BUILDLINK3_MK)
BIND_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.bind+=	bind>=9.6.0
BUILDLINK_PKGSRCDIR.bind?=	../../net/bind96
.endif # BIND_BUILDLINK3_MK

BUILDLINK_TREE+=	-bind
