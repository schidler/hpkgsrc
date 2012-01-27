# $NetBSD: tools.Haiku.mk,v 1.5 2010/08/25 10:43:34 obache Exp $
#
# System-supplied tools for the Haiku operating system.

TOOLS_PLATFORM.[?=		[			# shell builtin
TOOLS_PLATFORM.awk?=		/bin/awk
TOOLS_PLATFORM.basename?=	/bin/basename
TOOLS_PLATFORM.bash?=		/bin/bash
TOOLS_PLATFORM.bison?=		/boot/common/bin/bison
TOOLS_PLATFORM.bison-yacc?=	/boot/common/bin/bison -y
TOOLS_PLATFORM.bzcat?=		/bin/bzip2 -cd
TOOLS_PLATFORM.bzip2?=		/bin/bzip2
TOOLS_PLATFORM.cat?=		/bin/cat
TOOLS_PLATFORM.chgrp?=		/bin/chgrp
TOOLS_PLATFORM.chmod?=		/bin/chmod
TOOLS_PLATFORM.chown?=		/bin/chown
TOOLS_PLATFORM.cmp?=		/bin/cmp
TOOLS_PLATFORM.cp?=		/bin/cp
TOOLS_PLATFORM.cut?=		/bin/cut
TOOLS_PLATFORM.date?=		/bin/date
TOOLS_PLATFORM.diff?=		/bin/diff
TOOLS_PLATFORM.diff3?=		/bin/diff3
TOOLS_PLATFORM.dirname?=	/bin/dirname
TOOLS_PLATFORM.echo?=		echo			# shell builtin
TOOLS_PLATFORM.egrep?=		/bin/egrep
TOOLS_PLATFORM.env?=		/bin/env
TOOLS_PLATFORM.expr?=		/bin/expr
TOOLS_PLATFORM.false?=		false			# shell builtin
TOOLS_PLATFORM.fgrep?=		/bin/fgrep
TOOLS_PLATFORM.file?=		/bin/printf "%s: text\n"	# Hack
TOOLS_PLATFORM.find?=		/bin/find
TOOLS_PLATFORM.ftp?=		/bin/ftp
TOOLS_PLATFORM.gawk?=		/bin/gawk
TOOLS_PLATFORM.gm4?=		/boot/common/bin/m4
TOOLS_PLATFORM.gmake?=		/boot/common/bin/make
TOOLS_PLATFORM.grep?=		/bin/grep
#TOOLS_PLATFORM.groff?=		/usr/bin/groff
.if exists(/bin/sed)
TOOLS_PLATFORM.gsed?=		/bin/sed
.elif exists(/boot/common/bin/sed)
TOOLS_PLATFORM.gsed?=		/boot/common/bin/sed
.endif
#TOOLS_PLATFORM.gsoelim?=	/usr/bin/soelim
.if exists(/bin/tar)
TOOLS_PLATFORM.gtar?=		/bin/tar
.elif exists(/boot/common/bin/tar)
TOOLS_PLATFORM.gtar?=		/boot/common/bin/tar
.endif
TOOLS_PLATFORM.gunzip?=		/bin/gunzip -f
TOOLS_PLATFORM.unzip?=		/bin/unzip
TOOLS_PLATFORM.gzcat?=		/bin/zcat
TOOLS_PLATFORM.gzip?=		/bin/gzip -nf ${GZIP}
TOOLS_PLATFORM.head?=		/bin/head
TOOLS_PLATFORM.hostname?=	/bin/hostname
TOOLS_PLATFORM.id?=		/bin/id
TOOLS_PLATFORM.ident?=		/bin/ident
TOOLS_PLATFORM.install?=	/bin/install
TOOLS_PLATFORM.install-info?=	/boot/common/bin/install-info
#TOOLS_PLATFORM.ldconfig?=	/sbin/ldconfig
# XXX: Haiku currently no support of hard link.
TOOLS_PLATFORM.ln?=		/bin/ln
TOOLS_PLATFORM.ls?=		/bin/ls
.if exists(/boot/common/bin/lzcat)
TOOLS_PLATFORM.lzcat?=		/boot/common/bin/lzcat
.endif
TOOLS_PLATFORM.m4?=		${TOOLS_PLATFORM.gm4}
#TOOLS_PLATFORM.mail?=		/bin/mail
#TOOLS_PLATFORM.makeinfo?=	/boot/bin/makeinfo
TOOLS_PLATFORM.mkdir?=		/bin/mkdir -p
.if exists(/bin/mktemp)
TOOLS_PLATFORM.mktemp?=		/bin/mktemp
.endif
#TOOLS_PLATFORM.msgfmt?=		/usr/bin/msgfmt
TOOLS_PLATFORM.mv?=		/bin/mv
#TOOLS_PLATFORM.nice?=		/bin/nice
#TOOLS_PLATFORM.nroff?=		/usr/bin/nroff
TOOLS_PLATFORM.openssl?=	/boot/common/bin/openssl
TOOLS_PLATFORM.patch?=		/bin/patch
TOOLS_PLATFORM.printf?=		/bin/printf
TOOLS_PLATFORM.pwd?=		/bin/pwd
TOOLS_PLATFORM.rm?=		/bin/rm
TOOLS_PLATFORM.rmdir?=		/bin/rmdir
#TOOLS_PLATFORM.sdiff?=		/bin/sdiff
TOOLS_PLATFORM.sed?=		${TOOLS_PLATFORM.gsed}
TOOLS_PLATFORM.sh?=		/bin/sh
TOOLS_PLATFORM.sleep?=		/bin/sleep
#TOOLS_PLATFORM.soelim?=		/usr/bin/soelim
TOOLS_PLATFORM.sort?=		/bin/sort
TOOLS_PLATFORM.strip?=		/boot/develop/tools/gnupro/bin/strip
TOOLS_PLATFORM.tail?=		/bin/tail
TOOLS_PLATFORM.tar?=		${TOOLS_PLATFORM.gtar}
#TOOLS_PLATFORM.tbl?=		/usr/bin/tbl
TOOLS_PLATFORM.tee?=		/bin/tee
TOOLS_PLATFORM.test?=		test			# shell builtin
TOOLS_PLATFORM.touch?=		/bin/touch
TOOLS_PLATFORM.tr?=		/bin/tr
TOOLS_PLATFORM.true?=		true			# shell builtin
TOOLS_PLATFORM.tsort?=		/bin/tsort
TOOLS_PLATFORM.wc?=		/bin/wc
TOOLS_PLATFORM.xargs?=		/bin/xargs -r
TOOLS_PLATFORM.yasm?=		/boot/common/bin/yasm
TOOLS_PLATFORM.nasm?=		/boot/common/bin/yasm
#TOOLS_PLATFORM.xgettext?=	/usr/bin/xgettext
.if exists(/boot/common/bin/xzcat)
TOOLS_PLATFORM.xzcat?=		/boot/common/bin/xzcat
.endif
