#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/ubuntu/xenial/apt/sources.list.d/ \	#
#							Makefile.am	#
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
# 11/11/2020	MG	1.0.2	Remove hermes.list as these files are	#
#				used at container creation and hermes	#
#				may not be available.			#
# 22/08/2021	MG	1.0.3	Drop down the tree to the release	#
#				directory.				#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/ubuntu/xenial/apt/sources.list.d

launchpad.list: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
launchpad.list: $(srcdir)/launchpad.list.in

conf_DATA = launchpad.list

EXTRA_DIST = $(srcdir)/launchpad.list.in

CLEANFILES = *.tmp launchpad.list

