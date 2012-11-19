# $NetBSD: buildlink3.mk,v 1.10 2009/04/18 02:19:23 rh Exp $

BUILDLINK_TREE+=	libFoundation

.if !defined(LIBFOUNDATION_BUILDLINK3_MK)
LIBFOUNDATION_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libFoundation+=	libFoundation>=1.1.7.168
BUILDLINK_PKGSRCDIR.libFoundation?=	../../devel/libFoundation

FOUNDATION_LIB?=	fd
ADDITIONAL_INCLUDE_DIRS+=-I${GNUSTEP_SYSTEM_ROOT}/Library/Headers/libFoundation/${GNUSTEP_HOST_CPU}/${LOWER_OPSYS}/GNU
.if !defined(NO_FOUNDATION_ENV)
CONFIGURE_ENV+=		FOUNDATION_LIB=${FOUNDATION_LIB:Q}
CONFIGURE_ENV+=		ADDITIONAL_INCLUDE_DIRS=${ADDITIONAL_INCLUDE_DIRS:Q}
MAKE_ENV+=		FOUNDATION_LIB=${FOUNDATION_LIB:Q}
MAKE_ENV+=		ADDITIONAL_INCLUDE_DIRS=${ADDITIONAL_INCLUDE_DIRS:Q}
.endif

.include "../../devel/gnustep-make/buildlink3.mk"
.include "../../devel/gnustep-objc-lf2/buildlink3.mk"
.endif	# LIBFOUNDATION_BUILDLINK3_MK

BUILDLINK_TREE+=	-libFoundation