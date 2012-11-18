#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: ja_freewnn,v 1.3 2002/08/25 19:22:57 jlam Exp $
#
# PROVIDE: freewnn
# REQUIRE: DAEMON

. /etc/rc.subr

name="freewnn"
command_start="@PREFIX@/sbin/jserver"
command_stop="@PREFIX@/sbin/wnnkill"
pidfile=""

cmd=${1:-start}

case ${cmd} in
start)
    if [ -x ${command_start} ]; then
	echo "Starting ${name}."
        ${command_start} >/dev/null 2>&1
    fi
    ;;
stop)
    if [ -x ${command_stop} ]; then
        echo "Stopping ${name}."
        ${command_stop} >/dev/null 2>&1
    fi
    ;;
*)
    :
    ;;
esac
exit 0
