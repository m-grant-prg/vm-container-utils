#########################################################################
#									#
# Author: Copyright (C) 2022  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to build the lxcu configuration files.		#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/fedora/37/dev

cache.list install.list: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
cache.list: $(srcdir)/cache.list.in
install.list: $(srcdir)/install.list.in

conf_DATA = cache.list install.list

EXTRA_DIST = $(srcdir)/cache.list.in $(srcdir)/install.list.in

CLEANFILES = *.tmp cache.list install.list

