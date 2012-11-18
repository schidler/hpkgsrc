# $NetBSD: buildlink3.mk,v 1.4 2010/12/19 09:53:41 adam Exp $

BUILDLINK_TREE+=	postgresql84-client

.if !defined(POSTGRESQL84_CLIENT_BUILDLINK3_MK)
POSTGRESQL84_CLIENT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.postgresql84-client+=	postgresql84-client>=8.4.0
BUILDLINK_ABI_DEPENDS.postgresql84-client+=	postgresql84-client>=8.4.8
BUILDLINK_PKGSRCDIR.postgresql84-client?=	../../databases/postgresql84-client

# This variable contains the libraries need to link most clients.
BUILDLINK_LDADD.postgresql84-client=	-lpq ${BUILDLINK_LDADD.gettext}
BUILDLINK_FILES.postgresql84-client+=	bin/pg_config

.include "../../security/openssl/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.endif # POSTGRESQL84_CLIENT_BUILDLINK3_MK

BUILDLINK_TREE+=	-postgresql84-client
