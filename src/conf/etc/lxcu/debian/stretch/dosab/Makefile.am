#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/debian/stretch/dosab/Makefile.am		#
# Author: Copyright (C) 2020-2022  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
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
# 12/02/2021	MG	1.0.2	Move from Bintray to OBS.		#
# 21/08/2021	MG	1.0.3	Drop down the tree to the release	#
#				directory.				#
# 28/11/2021	MG	1.0.4	Tighten SPDX tag.			#
# 08/05/2022	MG	1.0.5	Use FQDN for hermes.			#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/debian/stretch/dosab

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

