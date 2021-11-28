#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/opensuse/15.2/dosab/Makefile.am		#
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
# 20/09/2021	MG	1.0.1	Initial release.			#
# 28/11/2021	MG	1.0.2	Tighten SPDX tag.			#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/opensuse/15.2/dosab

hermes.available hermes.unavailable hermes-beta.repo hermes-stable.repo \
	server.list: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
hermes.available: $(srcdir)/hermes.available.in
hermes.unavailable: $(srcdir)/hermes.unavailable.in
hermes-beta.repo: $(srcdir)/hermes-beta.repo.in
hermes-stable.repo: $(srcdir)/hermes-stable.repo.in
server.list: $(srcdir)/server.list.in

conf_DATA = hermes.available hermes.unavailable hermes-beta.repo \
	    hermes-stable.repo server.list

EXTRA_DIST = $(srcdir)/hermes.available.in $(srcdir)/hermes.unavailable.in \
	     $(srcdir)/hermes-beta.repo.in $(srcdir)/hermes-stable.repo.in \
	     $(srcdir)/server.list.in

CLEANFILES = *.tmp hermes.available hermes.unavailable hermes-beta.repo \
	     hermes-stable.repo server.list

