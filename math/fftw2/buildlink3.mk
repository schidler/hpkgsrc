# $NetBSD: buildlink3.mk,v 1.8 2009/03/20 19:24:56 joerg Exp $

BUILDLINK_TREE+=	fftw2

.if !defined(FFTW2_BUILDLINK3_MK)
FFTW2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.fftw2+=	fftw2>=2.1.3
BUILDLINK_ABI_DEPENDS.fftw2+=	fftw2>=2.1.5nb2
BUILDLINK_PKGSRCDIR.fftw2?=	../../math/fftw2
.endif # FFTW2_BUILDLINK3_MK

BUILDLINK_TREE+=	-fftw2
