#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: iplog
# REQUIRE: SERVERS

. /etc/rc.subr

name="iplog"
rcvar=${name}
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/${name}.pid"

load_rc_config ${name}	
run_rc_command "$1"
