# $NetBSD: buildlink3.mk,v 1.7 2006/07/08 23:10:41 jlam Exp $

BUILDLINK_TREE+=	unixodbc

.if !defined(UNIXODBC_BUILDLINK3_MK)
UNIXODBC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.unixodbc+=	unixodbc>=2.0.11nb1
BUILDLINK_ABI_DEPENDS.unixodbc+=	unixodbc>=2.0.11nb3
BUILDLINK_PKGSRCDIR.unixodbc?=	../../databases/unixodbc
.endif # UNIXODBC_BUILDLINK3_MK

BUILDLINK_TREE+=	-unixodbc
