#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/Makefile.am				#
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
# 22/09/2020	MG	1.0.1	Initial release.			#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu

br0.conf lxcbr0.conf lxcu.conf virbr0.conf: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
br0.conf: $(srcdir)/br0.conf.in
lxcbr0.conf: $(srcdir)/lxcbr0.conf.in
lxcu.conf: $(srcdir)/lxcu.conf.in
virbr0.conf: $(srcdir)/virbr0.conf.in

conf_DATA = br0.conf lxcbr0.conf lxcu.conf virbr0.conf

EXTRA_DIST = $(srcdir)/br0.conf.in $(srcdir)/lxcbr0.conf.in \
	$(srcdir)/lxcu.conf.in $(srcdir)/virbr0.conf.in

CLEANFILES = *.tmp br0.conf lxcbr0.conf lxcu.conf virbr0.conf

