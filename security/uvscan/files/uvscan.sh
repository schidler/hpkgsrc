#!/bin/sh
#
# $NetBSD: uvscan.sh,v 1.3 2002/10/21 07:12:34 jlam Exp $
#
# Wrapper script to execute McAfee(R) VirusScan

LD_LIBRARY_PATH=@PREFIX@/libexec/uvscan @PREFIX@/libexec/uvscan/uvscan "$@"
