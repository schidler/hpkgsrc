#!@RCD_SCRIPTS_SHELL@
#
#	$NetBSD: exim.sh,v 1.6 2003/11/25 10:21:58 abs Exp $
#
# PROVIDE: mail
# REQUIRE: LOGIN

. /etc/rc.subr

name="exim"
exim_flags=${exim_flags-"-bd -q30m"}
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/${name}.pid"
required_files="@PKG_SYSCONFDIR@/configure"
extra_commands="reload"

load_rc_config $name
run_rc_command "$1"
