# $NetBSD: buildlink3.mk,v 1.1.1.1 2007/03/24 16:57:41 agc Exp $
# Packages that only install static libraries or headers should
# include the following line:
#
# BUILDLINK_DEPMETHOD.argp?=	build

BUILDLINK_TREE+=	argp

.if !defined(ARGP_BUILDLINK3_MK)
ARGP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.argp+=	argp>=1.3
BUILDLINK_PKGSRCDIR.argp?=	../../devel/argp
.endif # ARGP_BUILDLINK3_MK

BUILDLINK_TREE+=	-argp
