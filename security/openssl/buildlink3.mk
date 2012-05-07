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
# XXX	BUILDLINK_DEPMETHOD.openssl?=	build

BUILDLINK_TREE+=	openssl

.if !defined(OPENSSL_BUILDLINK3_MK)
OPENSSL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.openssl+=	openssl>=1.0.0enb3
BUILDLINK_PKGSRCDIR.openssl?=	../../security/openssl
.endif	# OPENSSL_BUILDLINK3_MK

WRAPPER_REORDER_CMDS+=  reorder:l:crypt:crypto

SSLBASE=        ${BUILDLINK_PREFIX.openssl}
BUILD_DEFS+=    SSLBASE

.endif # OPENSSL_BUILDLINK3_MK

BUILDLINK_TREE+=	-openssl
