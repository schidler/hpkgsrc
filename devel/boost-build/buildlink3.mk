# $NetBSD: buildlink3.mk,v 1.19 2011/10/11 10:02:07 adam Exp $

BUILDLINK_TREE+=	boost-build

.if !defined(BOOST_BUILD_BUILDLINK3_MK)
BOOST_BUILD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.boost-build+=	boost-build-1.47.*
BUILDLINK_DEPMETHOD.boost-build?=	build
BUILDLINK_PKGSRCDIR.boost-build?=	../../devel/boost-build
.endif # BOOST_BUILD_BUILDLINK3_MK

BUILDLINK_TREE+=	-boost-build
