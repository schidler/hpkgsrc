# $NetBSD: buildlink3.mk,v 1.7 2009/03/20 19:24:30 joerg Exp $
#
# This file was created automatically using createbuildlink-3.5.

BUILDLINK_TREE+=	vanessa_logger

.if !defined(VANESSA_LOGGER_BUILDLINK3_MK)
VANESSA_LOGGER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.vanessa_logger+=	vanessa_logger>=0.0.8
BUILDLINK_ABI_DEPENDS.vanessa_logger+=	vanessa_logger>=0.0.8
BUILDLINK_PKGSRCDIR.vanessa_logger?=	../../devel/vanessa_logger
.endif # VANESSA_LOGGER_BUILDLINK3_MK

BUILDLINK_TREE+=	-vanessa_logger
