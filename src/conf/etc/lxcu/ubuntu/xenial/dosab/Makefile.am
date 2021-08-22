#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/ubuntu/xenial/dosab/Makefile.am		#
# Author: Copyright (C) 2020, 2021  Mark Grant				#
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
# 26/09/2020	MG	1.0.1	Initial release.			#
# 22/08/2021	MG	1.0.2	Drop down the tree to the release	#
#				directory.				#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/ubuntu/xenial/dosab

hermes.list hermes.mgent.home.available hermes.mgent.home.unavailable \
	launchpad.list.available launchpad.list.unavailable server.list \
	sources.list.available sources.list.unavailable: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
hermes.list: $(srcdir)/hermes.list.in
hermes.mgent.home.available: $(srcdir)/hermes.mgent.home.available.in
hermes.mgent.home.unavailable: $(srcdir)/hermes.mgent.home.unavailable.in
launchpad.list.available: $(srcdir)/launchpad.list.available.in
launchpad.list.unavailable: $(srcdir)/launchpad.list.unavailable.in
server.list: $(srcdir)/server.list.in
sources.list.available: $(srcdir)/sources.list.available.in
sources.list.unavailable: $(srcdir)/sources.list.unavailable.in

conf_DATA = hermes.list hermes.mgent.home.available \
	hermes.mgent.home.unavailable launchpad.list.available \
	launchpad.list.unavailable server.list sources.list.available \
	sources.list.unavailable

EXTRA_DIST = $(srcdir)/hermes.list.in $(srcdir)/hermes.mgent.home.available.in \
	$(srcdir)/hermes.mgent.home.unavailable.in \
	$(srcdir)/launchpad.list.available.in \
	$(srcdir)/launchpad.list.unavailable.in $(srcdir)/server.list.in \
	$(srcdir)/sources.list.available.in \
	$(srcdir)/sources.list.unavailable.in

CLEANFILES = *.tmp hermes.list hermes.mgent.home.available \
	hermes.mgent.home.unavailable launchpad.list.available \
	launchpad.list.unavailable server.list sources.list.available \
	sources.list.unavailable

