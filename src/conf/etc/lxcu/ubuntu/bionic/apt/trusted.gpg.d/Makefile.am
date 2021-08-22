#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/ubuntu/bionic/apt/trusted.gpg.d/ \	#
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
# 22/08/2021	MG	1.0.2	Drop down the tree to the release	#
#				directory.				#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/ubuntu/bionic/apt/trusted.gpg.d

hermes-keyring.gpg mgrant-utils-ppa-keyring.gpg: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	cp $${srcdir}$(@F).in $@.tmp
	mv $@.tmp $@
hermes-keyring.gpg: $(srcdir)/hermes-keyring.gpg.in
mgrant-utils-ppa-keyring.gpg: $(srcdir)/mgrant-utils-ppa-keyring.gpg.in

conf_DATA = hermes-keyring.gpg mgrant-utils-ppa-keyring.gpg

EXTRA_DIST = $(srcdir)/hermes-keyring.gpg.in \
	$(srcdir)/mgrant-utils-ppa-keyring.gpg.in

CLEANFILES = *.tmp hermes-keyring.gpg mgrant-utils-ppa-keyring.gpg

