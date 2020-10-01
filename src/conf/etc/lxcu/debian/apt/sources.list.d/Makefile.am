#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/debian/apt/sources.list.d/Makefile.am	#
# Author: Copyright (C) 2020  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0					#
#									#
# Purpose:								#
# AutoMake script file to build the lxcu configuration files.		#
#									#
#########################################################################

#########################################################################
#									#
# Changelog								#
#									#
# Date		Author	Version	Description				#
#									#
# 22/09/2020	MG	1.0.1	Initial release.			#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/debian/apt/sources.list.d

bintray.list hermes.list: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
bintray.list: $(srcdir)/bintray.list.in
hermes.list: $(srcdir)/hermes.list.in

conf_DATA = bintray.list hermes.list

EXTRA_DIST = $(srcdir)/bintray.list.in $(srcdir)/hermes.list.in

CLEANFILES = *.tmp bintray.list hermes.list

