# $NetBSD: buildlink3.mk,v 1.8 2009/03/20 19:24:25 joerg Exp $

BUILDLINK_TREE+=	ode

.if !defined(ODE_BUILDLINK3_MK)
ODE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ode+=		ode>=0.5nb2
BUILDLINK_ABI_DEPENDS.ode+=	ode>=0.5nb2
BUILDLINK_PKGSRCDIR.ode?=	../../devel/ode
.endif # ODE_BUILDLINK3_MK

BUILDLINK_TREE+=	-ode
