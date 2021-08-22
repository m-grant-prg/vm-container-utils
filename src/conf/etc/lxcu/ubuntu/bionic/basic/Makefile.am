#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/ubuntu/bionic/basic/Makefile.am		#
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


confdir = $(sysconfdir)/lxcu/ubuntu/bionic/basic

install.list: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
install.list: $(srcdir)/install.list.in

conf_DATA = install.list

EXTRA_DIST = $(srcdir)/install.list.in

CLEANFILES = *.tmp install.list

