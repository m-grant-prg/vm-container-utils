#########################################################################
#									#
# Script ID: src/prg/bash/lqvm/Makefile.am				#
# Author: Copyright (C) 2020  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0					#
#									#
# Purpose:								#
# AutoMake script file to generate LIXBackup scripts from source.	#
#									#
#########################################################################

#########################################################################
#									#
# Changelog								#
#									#
# Date		Author	Version	Description				#
#									#
# 22/08/2020	MG	1.0.1	Initial release.			#
#									#
#########################################################################


lqvms-sequential-start.sh lqvm-shutdown.sh lqvm-snap.sh lqvms-snap.sh \
	lqvm-start.sh: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
	chmod a+x $@
lqvms-sequential-start.sh: $(srcdir)/lqvms-sequential-start.sh.in
lqvm-shutdown.sh: $(srcdir)/lqvm-shutdown.sh.in
lqvm-snap.sh: $(srcdir)/lqvm-snap.sh.in
lqvms-snap.sh: $(srcdir)/lqvms-snap.sh.in
lqvm-start.sh: $(srcdir)/lqvm-start.sh.in


bin_SCRIPTS = lqvms-sequential-start.sh lqvm-shutdown.sh lqvm-snap.sh \
	lqvms-snap.sh lqvm-start.sh


EXTRA_DIST = $(srcdir)/lqvms-sequential-start.sh.in \
	$(srcdir)/lqvm-shutdown.sh.in $(srcdir)/lqvm-snap.sh.in \
	$(srcdir)/lqvms-snap.sh.in $(srcdir)/lqvm-start.sh.in

CLEANFILES = *.tmp lqvms-sequential-start.sh lqvm-shutdown.sh lqvm-snap.sh \
	lqvms-snap.sh lqvm-start.sh

