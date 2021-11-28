#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/ubuntu/focal/apt/Makefile.am		#
# Author: Copyright (C) 2020, 2021  Mark Grant				#
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
# 26/09/2020	MG	1.0.1	Initial release.			#
# 22/08/2021	MG	1.0.2	Drop down the tree to the release	#
#				directory.				#
# 28/11/2021	MG	1.0.3	Tighten SPDX tag.			#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/ubuntu/focal/apt

sources.list: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
sources.list: $(srcdir)/sources.list.in

trusted.gpg: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	cp $${srcdir}$(@F).in $@.tmp
	mv $@.tmp $@
trusted.gpg: $(srcdir)/trusted.gpg.in

conf_DATA = sources.list trusted.gpg

EXTRA_DIST = $(srcdir)/sources.list.in $(srcdir)/trusted.gpg.in

CLEANFILES = *.tmp sources.list trusted.gpg

