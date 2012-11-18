# $NetBSD$

BUILDLINK_TREE+=	tclap

.if !defined(TCLAP_BUILDLINK3_MK)
TCLAP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.tclap+=	tclap>=1.2.1
BUILDLINK_PKGSRCDIR.tclap?=	../../devel/tclap
.endif	# TCLAP_BUILDLINK3_MK

BUILDLINK_TREE+=	-tclap
