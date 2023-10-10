#########################################################################
#									#
# Author: Copyright (C) 2021-2023  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to build the lxcu configuration files.		#
#									#
#########################################################################


confdir = $(sysconfdir)/lxcu/debian/bullseye/apt/trusted.gpg.d

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

