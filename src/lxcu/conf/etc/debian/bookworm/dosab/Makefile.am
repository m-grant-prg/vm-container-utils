#########################################################################
#									#
# Author: Copyright (C) 2023-2026  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to build the lxcu configuration files.		#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/debian/bookworm/dosab

debian.sources.available debian.sources.unavailable \
	hermes.mgent.home.available hermes.mgent.home.unavailable \
	hermes.sources obs.sources.available obs.sources.unavailable \
	server.list: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
debian.sources.available: $(srcdir)/debian.sources.available.in
debian.sources.unavailable: $(srcdir)/debian.sources.unavailable.in
hermes.mgent.home.available: $(srcdir)/hermes.mgent.home.available.in
hermes.mgent.home.unavailable: $(srcdir)/hermes.mgent.home.unavailable.in
hermes.sources: $(srcdir)/hermes.sources.in
obs.sources.available: $(srcdir)/obs.sources.available.in
obs.sources.unavailable: $(srcdir)/obs.sources.unavailable.in
server.list: $(srcdir)/server.list.in

conf_DATA = debian.sources.available debian.sources.unavailable \
	    hermes.mgent.home.available hermes.mgent.home.unavailable \
	    hermes.sources obs.sources.available obs.sources.unavailable \
	    server.list

EXTRA_DIST = $(srcdir)/debian.sources.available.in \
	     $(srcdir)/debian.sources.unavailable.in \
	     $(srcdir)/hermes.mgent.home.available.in \
	     $(srcdir)/hermes.mgent.home.unavailable.in \
	     $(srcdir)/hermes.sources.in \
	     $(srcdir)/obs.sources.available.in \
	     $(srcdir)/obs.sources.unavailable.in \
	     $(srcdir)/server.list.in

CLEANFILES = *.tmp debian.sources.available debian.sources.unavailable \
	    hermes.mgent.home.available hermes.mgent.home.unavailable \
	    hermes.sources obs.sources.available obs.sources.unavailable \
	    server.list

