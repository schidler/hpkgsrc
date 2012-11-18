# $NetBSD$

BUILDLINK_TREE+=	ocamllwt

.if !defined(OCAMLLWT_BUILDLINK3_MK)
OCAMLLWT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ocamllwt+=	ocaml-lwt>=2.0.0
BUILDLINK_PKGSRCDIR.ocamllwt?=	../../devel/ocaml-lwt

.include "../../devel/libev/buildlink3.mk"
.endif	# OCAMLLWT_BUILDLINK3_MK

BUILDLINK_TREE+=	-ocamllwt
