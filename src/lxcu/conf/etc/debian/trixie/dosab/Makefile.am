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


confdir = $(sysconfdir)/lxcu/debian/trixie/dosab

obs.list.available obs.list.unavailable hermes.list \
	hermes.mgent.home.available hermes.mgent.home.unavailable server.list \
	sources.list.available sources.list.unavailable: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
obs.list.available: $(srcdir)/obs.list.available.in
obs.list.unavailable: $(srcdir)/obs.list.unavailable.in
hermes.list: $(srcdir)/hermes.list.in
hermes.mgent.home.available: $(srcdir)/hermes.mgent.home.available.in
hermes.mgent.home.unavailable: $(srcdir)/hermes.mgent.home.unavailable.in
server.list: $(srcdir)/server.list.in
sources.list.available: $(srcdir)/sources.list.available.in
sources.list.unavailable: $(srcdir)/sources.list.unavailable.in

conf_DATA = obs.list.available obs.list.unavailable hermes.list \
	    hermes.mgent.home.available hermes.mgent.home.unavailable \
	    server.list sources.list.available sources.list.unavailable

EXTRA_DIST = $(srcdir)/obs.list.available.in \
	$(srcdir)/obs.list.unavailable.in $(srcdir)/hermes.list.in \
	$(srcdir)/hermes.mgent.home.available.in \
	$(srcdir)/hermes.mgent.home.unavailable.in $(srcdir)/server.list.in \
	$(srcdir)/sources.list.available.in \
	$(srcdir)/sources.list.unavailable.in

CLEANFILES = *.tmp obs.list.available obs.list.unavailable hermes.list \
	hermes.mgent.home.available hermes.mgent.home.unavailable server.list \
	sources.list.available sources.list.unavailable

