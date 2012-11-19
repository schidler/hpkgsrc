#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: sfscd,v 1.2 2003/03/25 06:45:01 lukem Exp $
#
# start script for SFS client daemon 

# PROVIDE: sfscd
# REQUIRE: NETWORK

. /etc/rc.subr

name="sfscd"
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/${name}.pid"

load_rc_config $name
run_rc_command "$1"
