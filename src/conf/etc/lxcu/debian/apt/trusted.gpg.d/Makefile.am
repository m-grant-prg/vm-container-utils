#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/debian/apt/trusted.gpg.d/Makefile.am	#
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


confdir = $(sysconfdir)/lxcu/debian/apt/trusted.gpg.d

bintray-keyring.gpg hermes-keyring.gpg: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	cp $${srcdir}$(@F).in $@.tmp
	mv $@.tmp $@
bintray-keyring.gpg: $(srcdir)/bintray-keyring.gpg.in
hermes-keyring.gpg: $(srcdir)/hermes-keyring.gpg.in

conf_DATA = bintray-keyring.gpg hermes-keyring.gpg

EXTRA_DIST = $(srcdir)/bintray-keyring.gpg.in $(srcdir)/hermes-keyring.gpg.in

CLEANFILES = *.tmp bintray-keyring.gpg hermes-keyring.gpg

