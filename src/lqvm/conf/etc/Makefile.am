#########################################################################
#									#
# Author: Copyright (C) 2020, 2021, 2023  Mark Grant			#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to build the lqvm configuration files.		#
#									#
#########################################################################


confdir = $(sysconfdir)

lqvm.conf: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
lqvm.conf: $(srcdir)/lqvm.conf.in

conf_DATA = lqvm.conf

EXTRA_DIST = $(srcdir)/lqvm.conf.in

CLEANFILES = *.tmp lqvm.conf

