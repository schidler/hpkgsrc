# $NetBSD: buildlink3.mk,v 1.20 2011/04/22 13:42:05 obache Exp $

BUILDLINK_TREE+=	glib2

.if !defined(GLIB2_BUILDLINK3_MK)
GLIB2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.4.0
BUILDLINK_ABI_DEPENDS.glib2+=	glib2>=2.28.6nb3
BUILDLINK_PKGSRCDIR.glib2?=	../../devel/glib2

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.endif # GLIB2_BUILDLINK3_MK

BUILDLINK_TREE+=	-glib2
