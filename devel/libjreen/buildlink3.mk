# $NetBSD$
# XXX
# XXX This file was created automatically using createbuildlink-3.16.
# XXX After this file has been verified as correct, the comment lines
# XXX beginning with "XXX" should be removed.  Please do not commit
# XXX unverified buildlink3.mk files.
# XXX
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.libjreen?=	build

BUILDLINK_TREE+=	libjreen

.if !defined(LIBJREEN_BUILDLINK3_MK)
LIBJREEN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libjreen+=	libjreen>=1.1.0
BUILDLINK_PKGSRCDIR.libjreen?=	../../devel/libjreen

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../security/qca2/buildlink3.mk"
.endif	# LIBJREEN_BUILDLINK3_MK

BUILDLINK_TREE+=	-libjreen
