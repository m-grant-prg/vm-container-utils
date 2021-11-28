#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/debian/bullseye/dosab/Makefile.am	#
# Author: Copyright (C) 2021  Mark Grant				#
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
# 22/08/2021	MG	1.0.1	Initial release.			#
# 28/11/2021	MG	1.0.2	Tighten SPDX tag.			#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/debian/bullseye/dosab

obs.list.available obs.list.unavailable hermes.available hermes.list \
	hermes.unavailable server.list sources.list.available \
	sources.list.unavailable: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
obs.list.available: $(srcdir)/obs.list.available.in
obs.list.unavailable: $(srcdir)/obs.list.unavailable.in
hermes.available: $(srcdir)/hermes.available.in
hermes.list: $(srcdir)/hermes.list.in
hermes.unavailable: $(srcdir)/hermes.unavailable.in
server.list: $(srcdir)/server.list.in
sources.list.available: $(srcdir)/sources.list.available.in
sources.list.unavailable: $(srcdir)/sources.list.unavailable.in

conf_DATA = obs.list.available obs.list.unavailable hermes.available \
	hermes.list hermes.unavailable server.list sources.list.available \
	sources.list.unavailable

EXTRA_DIST = $(srcdir)/obs.list.available.in \
	$(srcdir)/obs.list.unavailable.in $(srcdir)/hermes.available.in \
	$(srcdir)/hermes.list.in $(srcdir)/hermes.unavailable.in \
	$(srcdir)/server.list.in $(srcdir)/sources.list.available.in \
	$(srcdir)/sources.list.unavailable.in

CLEANFILES = *.tmp obs.list.available obs.list.unavailable \
	hermes.available hermes.list hermes.unavailable server.list \
	sources.list.available sources.list.unavailable

