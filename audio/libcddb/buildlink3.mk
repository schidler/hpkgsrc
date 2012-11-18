# $NetBSD: buildlink3.mk,v 1.12 2009/01/24 12:13:21 obache Exp $

BUILDLINK_TREE+=	libcddb

.if !defined(LIBCDDB_BUILDLINK3_MK)
LIBCDDB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libcddb+=	libcddb>=0.9.4
BUILDLINK_ABI_DEPENDS.libcddb+=	libcddb>=0.9.5nb1
BUILDLINK_PKGSRCDIR.libcddb?=	../../audio/libcddb

.include "../../converters/libiconv/buildlink3.mk"
.endif # LIBCDDB_BUILDLINK3_MK

BUILDLINK_TREE+=	-libcddb
