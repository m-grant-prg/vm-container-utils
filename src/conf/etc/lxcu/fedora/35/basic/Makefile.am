#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/fedora/35/basic/Makefile.am		#
# Author: Copyright (C) 2021, 2022  Mark Grant				#
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
# 04/11/2021	MG	1.0.1	Initial release.			#
# 28/11/2021	MG	1.0.2	Tighten SPDX tag.			#
# 10/01/2022	MG	1.0.3	Correct 33 AOT 35.			#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/fedora/35/basic

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

