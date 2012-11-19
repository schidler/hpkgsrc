# $NetBSD: buildlink3.mk,v 1.12 2009/03/20 19:25:17 joerg Exp $

BUILDLINK_TREE+=	cyrus-sasl

.if !defined(CYRUS_SASL_BUILDLINK3_MK)
CYRUS_SASL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.cyrus-sasl+=	cyrus-sasl>=2.1.12
BUILDLINK_ABI_DEPENDS.cyrus-sasl+=	cyrus-sasl>=2.1.20nb3
BUILDLINK_PKGSRCDIR.cyrus-sasl?=	../../security/cyrus-sasl

# Cyrus SASL mechanisms are shared modules loaded via dlopen().
.include "../../mk/dlopen.buildlink3.mk"
.endif # CYRUS_SASL_BUILDLINK3_MK

BUILDLINK_TREE+=	-cyrus-sasl
