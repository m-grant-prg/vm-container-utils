#########################################################################
#									#
# Script ID: src/conf/etc/Makefile.am					#
# Author: Copyright (C) 2020  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0					#
#									#
# Purpose:								#
# AutoMake script file to build the lqvm configuration files.		#
#									#
#########################################################################

#########################################################################
#									#
# Changelog								#
#									#
# Date		Author	Version	Description				#
#									#
# 26/08/2020	MG	1.0.1	Initial release.			#
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

