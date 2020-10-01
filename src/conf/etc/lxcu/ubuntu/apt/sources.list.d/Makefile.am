#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/ubuntu/apt/sources.list.d/Makefile.am	#
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
# 26/09/2020	MG	1.0.1	Initial release.			#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/ubuntu/apt/sources.list.d

hermes.list launchpad.list: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
hermes.list: $(srcdir)/hermes.list.in
launchpad.list: $(srcdir)/launchpad.list.in

conf_DATA = hermes.list launchpad.list

EXTRA_DIST = $(srcdir)/hermes.list.in $(srcdir)/launchpad.list.in

CLEANFILES = *.tmp hermes.list launchpad.list

