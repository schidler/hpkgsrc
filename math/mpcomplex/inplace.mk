# $NetBSD$
#
# Include this file to extract math/mpcomplex source into the WRKSRC of
# another package. This is to be used by GCC packages to avoid the numerous
# dependencies math/mpcomplex has.

post-extract: extract-inplace-mpcomplex

extract-inplace-mpcomplex:
	(cd ../../math/mpcomplex && ${MAKE} WRKDIR=${WRKSRC}/.devel.mpcomplex EXTRACT_DIR=${WRKSRC} \
		WRKSRC='$${EXTRACT_DIR}/$${DISTNAME}' SKIP_DEPENDS=YES fetch patch clean)
	${MV} ${WRKSRC}/mpc-* ${WRKSRC}/mpc

