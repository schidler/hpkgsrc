# $NetBSD$

BUILDLINK_TREE+=	libquicktime

.if !defined(LIBQUICKTIME_BUILDLINK3_MK)
LIBQUICKTIME_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libquicktime+=	libquicktime>=1.2.3
BUILDLINK_PKGSRCDIR.libquicktime?=	../../multimedia/libquicktime

.include "../../devel/gettext-lib/buildlink3.mk"
.endif	# LIBQUICKTIME_BUILDLINK3_MK

BUILDLINK_TREE+=	-libquicktime
