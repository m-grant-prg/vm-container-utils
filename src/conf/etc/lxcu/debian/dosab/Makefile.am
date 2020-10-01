#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/debian/dosab/Makefile.am			#
# Author: Copyright (C) 2020  Mark Grant				#
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
# 22/09/2020	MG	1.0.1	Initial release.			#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/debian/dosab

bintray.list.available bintray.list.unavailable hermes.available hermes.list \
	hermes.unavailable server.list sources.list.available \
	sources.list.unavailable: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
bintray.list.available: $(srcdir)/bintray.list.available.in
bintray.list.unavailable: $(srcdir)/bintray.list.unavailable.in
hermes.available: $(srcdir)/hermes.available.in
hermes.list: $(srcdir)/hermes.list.in
hermes.unavailable: $(srcdir)/hermes.unavailable.in
server.list: $(srcdir)/server.list.in
sources.list.available: $(srcdir)/sources.list.available.in
sources.list.unavailable: $(srcdir)/sources.list.unavailable.in

conf_DATA = bintray.list.available bintray.list.unavailable hermes.available \
	hermes.list hermes.unavailable server.list sources.list.available \
	sources.list.unavailable

EXTRA_DIST = $(srcdir)/bintray.list.available.in \
	$(srcdir)/bintray.list.unavailable.in $(srcdir)/hermes.available.in \
	$(srcdir)/hermes.list.in $(srcdir)/hermes.unavailable.in \
	$(srcdir)/server.list.in $(srcdir)/sources.list.available.in \
	$(srcdir)/sources.list.unavailable.in

CLEANFILES = *.tmp bintray.list.available bintray.list.unavailable \
	hermes.available hermes.list hermes.unavailable server.list \
	sources.list.available sources.list.unavailable

