#########################################################################
#									#
# Author: Copyright (C) 2024-2026  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to build the lxcu configuration files.		#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/ubuntu/noble/apt/sources.list.d

launchpad.sources ubuntu.sources: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
launchpad.sources: $(srcdir)/launchpad.sources.in
ubuntu.sources: $(srcdir)/ubuntu.sources.in

conf_DATA = launchpad.sources ubuntu.sources

EXTRA_DIST = $(srcdir)/launchpad.sources.in $(srcdir)/ubuntu.sources.in

CLEANFILES = *.tmp launchpad.sources ubuntu.sources

