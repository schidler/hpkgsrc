# $NetBSD: buildlink3.mk,v 1.11 2010/01/17 12:02:12 wiz Exp $

BUILDLINK_TREE+=	apr

.if !defined(APR_BUILDLINK3_MK)
APR_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.apr+=	apr-0.9.* apr>=0.9.5.2.0.51nb1
BUILDLINK_ABI_DEPENDS.apr+=	apr>=0.9.17.2.0.63nb2
BUILDLINK_PKGSRCDIR.apr?=	../../devel/apr0
BUILDLINK_INCDIRS.apr?=		include/apr-0

WRAPPER_REORDER_CMDS+=	reorder:l:aprutil-0:crypt

BUILDLINK_FILES.apr+=	bin/apr-config
BUILDLINK_FILES.apr+=	bin/apu-config
BUILDLINK_FILES.apr+=	lib/*.exp

.include "../../mk/bsd.fast.prefs.mk"

pkgbase := apr
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.apr:Mdb4)
.  include "../../databases/db4/buildlink3.mk"
.endif

.if !empty(PKG_BUILD_OPTIONS.apr:Mldap)
.  include "../../databases/openldap-client/buildlink3.mk"
.endif

.include "../../converters/libiconv/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.endif # APR_BUILDLINK3_MK

BUILDLINK_TREE+=	-apr
