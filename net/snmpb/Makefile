# $NetBSD$
#

DISTNAME=       snmpb-trunk
PKGNAME=		snmpb-1.0
CATEGORIES=     net
MASTER_SITES=   ftp://freenet59.ru/distfiles/

MAINTAINER=	admin@freenet59.ru
HOMEPAGE=	http://sourceforge.net/projects/snmpb
COMMENT=	Graphical SNMP MIB browser written in QT.
#LICENSE=	# TODO: (see mk/license.mk)
PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	gmake
USE_LANGUAGES=	c c++
USE_LIBTOOL=	NO
WRKSRC=         ${WRKDIR}/trunk
CHECK_PORTABILITY_SKIP+=libsmi/*
MAKE_FLAGS +=   INSTALL_PREFIX=${PREFIX}
MAKE_FLAGS +=   SHARE=data
PTHREAD_AUTO_VARS=	yes

pre-build:
	${CP} ${PKGSRCDIR}/mk/gnu-config/config.guess ${WRKSRC}/libsmi
	${CP} ${PKGSRCDIR}/mk/gnu-config/config.sub ${WRKSRC}/libsmi

do-install:
	${MKDIR} ${DESTDIR}${PREFIX}/bin ${DESTDIR}${PREFIX}/data/snmpb/mibs ${DESTDIR}${PREFIX}/data/snmpb/pibs
	${CP} ${WRKSRC}/app/snmpb ${DESTDIR}${PREFIX}/bin
	${CP} ${WRKSRC}/libsmi/mibs/iana/* ${DESTDIR}${PREFIX}/data/snmpb/mibs
	${CP} ${WRKSRC}/libsmi/mibs/ietf/* ${DESTDIR}${PREFIX}/data/snmpb/mibs
	${CP} ${WRKSRC}/libsmi/mibs/tubs/* ${DESTDIR}${PREFIX}/data/snmpb/mibs
	${CP} ${WRKSRC}/libsmi/pibs/ietf/* ${DESTDIR}${PREFIX}/data/snmpb/pibs
	${CP} ${WRKSRC}/libsmi/pibs/tubs/* ${DESTDIR}${PREFIX}/data/snmpb/pibs
	${RM} -f ${DESTDIR}${PREFIX}/data/snmpb/mibs/Makefile* ${DESTDIR}${PREFIX}/data/snmpb/pibs/Makefile*
	${MKDIR} ${DESTDIR}${PREFIX}/data/applications ${DESTDIR}${PREFIX}/data/mime/packages
	${CP} ${WRKSRC}/app/snmpb.desktop ${DESTDIR}${PREFIX}/data/applications
	${CP} ${WRKSRC}/app/snmpb.xml ${DESTDIR}${PREFIX}/data/mime/packages
#	${CAT} ${DESTDIR}${PREFIX}/data/applications/defaults.list | grep -v "text\/x-mib=" | grep -v "text\/x-mib2=" | grep -v "text\/x-pib=" | grep -v "text\/x-pib2=" | grep -v "text\/x-smi=" | grep -v "text\/x-smi2=" | grep -v "text\/x-smi3=" | grep -v "text\/x-smi4=" | grep -v "text\/x-smi5=" > /tmp/snmpb-assoc; cat app/defaults.list >> /tmp/snmpb-assoc;
#	${CP} /tmp/snmpb-assoc ${DESTDIR}${PREFIX}/data/applications/defaults.list
#	${RM} -f /tmp/snmpb-assoc
	${MKDIR} ${DESTDIR}${PREFIX}/data/icons/hicolor/128x128/apps ${DESTDIR}${PREFIX}/data/pixmaps ${DESTDIR}${PREFIX}/data/icons/hicolor/scalable/apps
	${CP} ${WRKSRC}/app/images/snmpb.png ${DESTDIR}${PREFIX}/data/icons/hicolor/128x128/apps
	${CP} ${WRKSRC}/app/images/snmpb.png ${DESTDIR}${PREFIX}/data/pixmaps
	${CP} ${WRKSRC}/app/images/snmpb.svg ${DESTDIR}${PREFIX}/data/icons/hicolor/scalable/apps


.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
