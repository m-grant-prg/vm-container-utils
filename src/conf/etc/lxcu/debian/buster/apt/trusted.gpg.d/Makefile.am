#########################################################################
#									#
# Script ID: src/conf/etc/lxcu/debian/buster/apt/trusted.gpg.d/ \	#
#							Makefile.am	#
# Author: Copyright (C) 2020-2022  Mark Grant				#
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
# 24/01/2022	MG	1.0.5	Remove OBS key as Create now gets it	#
#				from source and the keyring package is	#
#				installed.				#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/debian/buster/apt/trusted.gpg.d

hermes-keyring.gpg: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	cp $${srcdir}$(@F).in $@.tmp
	mv $@.tmp $@
hermes-keyring.gpg: $(srcdir)/hermes-keyring.gpg.in

conf_DATA = hermes-keyring.gpg

EXTRA_DIST = $(srcdir)/hermes-keyring.gpg.in

CLEANFILES = *.tmp hermes-keyring.gpg

