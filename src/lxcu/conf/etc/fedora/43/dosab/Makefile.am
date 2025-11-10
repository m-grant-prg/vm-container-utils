#########################################################################
#									#
# Author: Copyright (C) 2025  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to build the lxcu configuration files.		#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/fedora/43/dosab

hermes.mgent.home.available hermes.mgent.home.unavailable hermes-beta.repo \
	hermes-stable.repo server.list: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
hermes.mgent.home.available: $(srcdir)/hermes.mgent.home.available.in
hermes.mgent.home.unavailable: $(srcdir)/hermes.mgent.home.unavailable.in
hermes-beta.repo: $(srcdir)/hermes-beta.repo.in
hermes-stable.repo: $(srcdir)/hermes-stable.repo.in
server.list: $(srcdir)/server.list.in

conf_DATA = hermes.mgent.home.available hermes.mgent.home.unavailable \
	    hermes-beta.repo hermes-stable.repo server.list

EXTRA_DIST = $(srcdir)/hermes.mgent.home.available.in \
	     $(srcdir)/hermes.mgent.home.unavailable.in \
	     $(srcdir)/hermes-beta.repo.in $(srcdir)/hermes-stable.repo.in \
	     $(srcdir)/server.list.in

CLEANFILES = *.tmp hermes.mgent.home.available hermes.mgent.home.unavailable \
	     hermes-beta.repo hermes-stable.repo server.list

