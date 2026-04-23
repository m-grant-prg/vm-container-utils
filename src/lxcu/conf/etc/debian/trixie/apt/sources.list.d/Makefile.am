#########################################################################
#									#
# Author: Copyright (C) 2025, 2026  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to build the lxcu configuration files.		#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/debian/trixie/apt/sources.list.d

debian.sources obs.sources: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
debian.sources: $(srcdir)/debian.sources.in
obs.sources: $(srcdir)/obs.sources.in

conf_DATA = debian.sources obs.sources

EXTRA_DIST = $(srcdir)/debian.sources.in $(srcdir)/obs.sources.in

CLEANFILES = *.tmp debian.sources obs.sources

