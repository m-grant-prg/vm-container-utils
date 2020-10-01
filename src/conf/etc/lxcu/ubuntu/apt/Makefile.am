#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/ubuntu/apt/Makefile.am			#
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


confdir = $(sysconfdir)/lxcu/ubuntu/apt

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

