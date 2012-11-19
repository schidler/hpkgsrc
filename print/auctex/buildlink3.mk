# $NetBSD: buildlink3.mk,v 1.1 2007/10/29 04:44:04 uebayasi Exp $
#

BUILDLINK_TREE+=	auctex

.if !defined(AUCTEX_BUILDLINK3_MK)
AUCTEX_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.auctex+=	${EMACS_PKGNAME_PREFIX}auctex>=11
BUILDLINK_PKGSRCDIR.auctex?=	../../print/auctex

BUILDLINK_CONTENTS_FILTER.auctex=	${EGREP} '.*\.el$$|.*\.elc$$'
.endif # AUCTEX_BUILDLINK3_MK

BUILDLINK_TREE+=	-auctex
