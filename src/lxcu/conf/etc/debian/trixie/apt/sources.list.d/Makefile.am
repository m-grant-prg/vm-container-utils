#########################################################################
#									#
# Author: Copyright (C) 2023-2025  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to build the lxcu configuration files.		#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/debian/trixie/apt/sources.list.d

obs.list: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
obs.list: $(srcdir)/obs.list.in

conf_DATA = obs.list

EXTRA_DIST = $(srcdir)/obs.list.in

CLEANFILES = *.tmp obs.list

