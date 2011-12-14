# $NetBSD: check-shlibs-elf.awk,v 1.3 2010/02/02 23:35:36 joerg Exp $
#
# Copyright (c) 2007 Joerg Sonnenberger <joerg@NetBSD.org>.
# All rights reserved.
#
# This code was developed as part of Google's Summer of Code 2007 program.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in
#    the documentation and/or other materials provided with the
#    distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE
# COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
# AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
# OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.

#
# Read a list of potential ELF binaries from stdin.
# For each, extract the DT_RPATH and DT_NEEDED fields.
# Check that DT_RPATH is not relative to WRKDIR.
# Check that DT_NEEDED can be resolved either via DT_RPATH
# or a system specific default path.
# Check that the resolved DSO belongs to full dependency.
#

function shquote(IN, out) {
	out = IN;
	gsub("\\\\", "\\\\", out);
	gsub("\\\n", "\\n", out);
	gsub("\\\t", "\\t", out);
	gsub(" ", "\\ ", out);
	gsub("'", "\\'", out);
	gsub("`", "\\`", out);
	gsub("\"", "\\\"", out);
	gsub(";", "\\;", out);
	gsub("&", "\\&", out);
	gsub("<", "\\<", out);
	gsub(">", "\\>", out);
	gsub("\\(", "\\(", out);
	gsub("\\)", "\\)", out);
	gsub("\\|", "\\|", out);
	gsub("\\*", "\\*", out);
	gsub("\\?", "\\?", out);
	gsub("\\{", "\\{", out);
	gsub("\\}", "\\}", out);
	gsub("\\[", "\\[", out);
	gsub("\\]", "\\]", out);
	gsub("\\$", "\\$", out);
	gsub("!", "\\!", out);
	gsub("#", "\\#", out);
	gsub("\\^", "\\^", out);
	gsub("~", "\\~", out);
	return out;
}

function check_pkg(DSO, pkg, found) {
	if (destdir == "")
		return 0
	cmd = pkg_info_cmd " -Fe " shquote(DSO) " 2> /dev/null"
	if ((cmd | getline pkg) < 0) {
		close(cmd)
		return 0
	}
	close(cmd)
	if (pkg == "")
		return 0
	found=0
	while ((getline < depends_file) > 0) {
		if ($3 == pkg) {
			found=1
			if ($1 != "full")
				continue
			close(depends_file)
			return 0
		}
	}
	if (found)
		print DSO ": " pkg " is not a runtime dependency"
	# Not yet:
	# print DSO ": " pkg " is not a dependency"
	close(depends_file)
}

function checkshlib(DSO, needed, rpath, found, dso_rath, got_rpath) {
	cmd = readelf " -Wd " shquote(DSO) " 2> /dev/null"
	while ((cmd | getline) > 0) {
		if ($2 == "(RPATH)") {
			sub("^[[:space:]]*0[xX][[:xdigit:]]+[[:space:]]+\\(RPATH\\)[[:space:]]+Library rpath: \\[", "")
			dso_rpath = substr($0, 1, length($0) - 1)
			if (length(system_rpath) > 0)
				split(dso_rpath ":" system_rpath, rpath, ":")
			else
				split(dso_rpath, rpath, ":")
			got_rpath = 1
		}
		if ($2 == "(NEEDED)") {
			sub("^[[:space:]]*0[xX][[:xdigit:]]+[[:space:]]+\\(NEEDED\\)[[:space:]]+Shared library: \\[", "")
			needed[substr($0, 1, length($0) - 1)] = ""
		}
	}
	if (!got_rpath)
		split(system_rpath, rpath, ":")
	close(cmd)
	for (p in rpath) {
		if (rpath[p] == wrkdir ||
		    substr(rpath[p], 1, length(wrkdir) + 1) == wrkdir "/") {
			print DSO ": rpath relative to WRKDIR"
		}
	}
	for (lib in needed) {
		for (p in rpath) {
			if (!system("test -f " shquote(cross_destdir rpath[p] "/" lib))) {
				check_pkg(rpath[p] "/" lib)
				found = 1
				break
			}
			if (!system("test -f " shquote(destdir rpath[p] "/" lib))) {
				found = 1
				break
			}
		}
		if (found == 0)
			print DSO ": missing library: " lib;
	}
	delete rpath
	delete needed
}

BEGIN {
	system_rpath = ENVIRON["PLATFORM_RPATH"]
	cross_destdir = ENVIRON["CROSS_DESTDIR"]
	destdir = ENVIRON["DESTDIR"]
	readelf = ENVIRON["PLATFORM_READELF"]
	wrkdir = ENVIRON["WRKDIR"]
	pkg_info_cmd = ENVIRON["PKG_INFO_CMD"]
	depends_file = ENVIRON["DEPENDS_FILE"]
	if (readelf == "")
		readelf = "readelf"
}

{ checkshlib($0); }
