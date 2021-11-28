#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/debian/stretch/apt/trusted.gpg.d/ \	#
#							Makefile.am	#
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
# 22/09/2020	MG	1.0.1	Initial release.			#
# 11/02/2021	MG	1.0.2	Move from Bintray to OBS.		#
# 21/08/2021	MG	1.0.3	Drop down the tree to the release	#
#				directory.				#
# 28/11/2021	MG	1.0.4	Tighten SPDX tag.			#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/debian/stretch/apt/trusted.gpg.d

obs-debian-keyring.gpg hermes-keyring.gpg: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	cp $${srcdir}$(@F).in $@.tmp
	mv $@.tmp $@
obs-debian-keyring.gpg: $(srcdir)/obs-debian-keyring.gpg.in
hermes-keyring.gpg: $(srcdir)/hermes-keyring.gpg.in

conf_DATA = obs-debian-keyring.gpg hermes-keyring.gpg

EXTRA_DIST = $(srcdir)/obs-debian-keyring.gpg.in $(srcdir)/hermes-keyring.gpg.in

CLEANFILES = *.tmp obs-debian-keyring.gpg hermes-keyring.gpg

