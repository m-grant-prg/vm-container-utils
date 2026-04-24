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


confdir = $(sysconfdir)/lxcu/ubuntu/resolute/dosab

hermes.sources hermes.mgent.home.available hermes.mgent.home.unavailable \
	launchpad.sources.available launchpad.sources.unavailable server.list \
	ubuntu.sources.available ubuntu.sources.unavailable: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
hermes.sources: $(srcdir)/hermes.sources.in
hermes.mgent.home.available: $(srcdir)/hermes.mgent.home.available.in
hermes.mgent.home.unavailable: $(srcdir)/hermes.mgent.home.unavailable.in
launchpad.sources.available: $(srcdir)/launchpad.sources.available.in
launchpad.sources.unavailable: $(srcdir)/launchpad.sources.unavailable.in
server.list: $(srcdir)/server.list.in
ubuntu.sources.available: $(srcdir)/ubuntu.sources.available.in
ubuntu.sources.unavailable: $(srcdir)/ubuntu.sources.unavailable.in

conf_DATA = hermes.sources hermes.mgent.home.available \
	    hermes.mgent.home.unavailable launchpad.sources.available \
	    launchpad.sources.unavailable server.list ubuntu.sources.available \
	    ubuntu.sources.unavailable

EXTRA_DIST = $(srcdir)/hermes.sources.in \
	     $(srcdir)/hermes.mgent.home.available.in \
	     $(srcdir)/hermes.mgent.home.unavailable.in \
	     $(srcdir)/launchpad.sources.available.in \
	     $(srcdir)/launchpad.sources.unavailable.in \
	     $(srcdir)/server.list.in \
	     $(srcdir)/ubuntu.sources.available.in \
	     $(srcdir)/ubuntu.sources.unavailable.in

CLEANFILES = *.tmp hermes.sources hermes.mgent.home.available \
	     hermes.mgent.home.unavailable launchpad.sources.available \
	     launchpad.sources.unavailable server.list \
	     ubuntu.sources.available ubuntu.sources.unavailable

