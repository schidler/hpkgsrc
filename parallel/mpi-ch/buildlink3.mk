# $NetBSD$

BUILDLINK_TREE+=	mpich2

.if !defined(MPICH2_BUILDLINK3_MK)
MPICH2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mpich2+=	mpich2>=1.0.7
BUILDLINK_PKGSRCDIR.mpich2?=	../../parallel/mpi-ch

.include "../../parallel/openpa/buildlink3.mk"
.endif	# MPICH2_BUILDLINK3_MK

BUILDLINK_TREE+=	-mpich2
