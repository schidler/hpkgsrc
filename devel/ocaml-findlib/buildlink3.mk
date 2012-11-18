# $NetBSD: buildlink3.mk,v 1.3 2011/06/15 05:25:46 uebayasi Exp $

BUILDLINK_TREE+=	ocaml-findlib

.if !defined(OCAML_FINDLIB_BUILDLINK3_MK)
OCAML_FINDLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocaml-findlib+=ocaml-findlib>=1.2
BUILDLINK_ABI_DEPENDS.ocaml-findlib+=ocaml-findlib>=1.2
BUILDLINK_PKGSRCDIR.ocaml-findlib?=	../../devel/ocaml-findlib

BUILDLINK_TARGETS+=	ocaml-findlib-wrappers ocaml-findlib-ldconf

.PHONY: ocaml-findlib-wrappers
ocaml-findlib-wrappers:
	${RUN}								\
	${SED}	-e 's|@SH@|'${SH:Q}'|g'					\
		-e 's|@OCAML_FINDLIB_PREFIX@|${BUILDLINK_PREFIX.ocaml-findlib}|g' \
		-e 's|@BUILDLINK_DIR@|${BUILDLINK_DIR}|g'		\
		< ${.CURDIR}/../../devel/ocaml-findlib/files/ocamlfind.sh \
		> ${BUILDLINK_DIR}/bin/ocamlfind;			\
	${CHMOD} +x ${BUILDLINK_DIR}/bin/ocamlfind

.PHONY: ocaml-findlib-ldconf
ocaml-findlib-ldconf:
	${RUN}								\
	${CP} ${BUILDLINK_PREFIX.ocaml}/lib/ocaml/ld.conf		\
	    ${BUILDLINK_DIR}/lib/ocaml

INSTALLATION_DIRS+=	lib/ocaml/site-lib
.endif # OCAML_FINDLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocaml-findlib
