# $NetBSD: buildlink3.mk,v 1.5 2010/01/17 12:02:43 wiz Exp $

BUILDLINK_TREE+=	py-SSLCrypto

.if !defined(PY_SSLCRYPTO_BUILDLINK3_MK)
PY_SSLCRYPTO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.py-SSLCrypto+=	${PYPKGPREFIX}-SSLCrypto>=0.1.1
BUILDLINK_ABI_DEPENDS.py-SSLCrypto+=	${PYPKGPREFIX}-SSLCrypto>=0.1.1nb3
BUILDLINK_PKGSRCDIR.py-SSLCrypto?=	../../security/py-SSLCrypto

#.include "../../security/openssl/buildlink3.mk"
.endif # PY_SSLCRYPTO_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-SSLCrypto
