#########################################################################
#									#
# Script ID: src/prg/bash/lqvm/Makefile.am				#
# Author: Copyright (C) 2020, 2021  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to generate lqvm scripts from source.		#
#									#
#########################################################################

#########################################################################
#									#
# Changelog								#
#									#
# Date		Author	Version	Description				#
#									#
# 22/08/2020	MG	1.0.1	Initial release.			#
# 28/11/2021	MG	1.0.2	Tighten SPDX tag.			#
# 15/12/2021	MG	1.0.3	Add lqvms-backups.sh			#
#									#
#########################################################################


lqvms-backups.sh lqvms-sequential-start.sh lqvm-shutdown.sh lqvm-snap.sh \
	lqvms-snap.sh lqvm-start.sh: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
	chmod a+x $@
lqvms-backups.sh: $(srcdir)/lqvms-backups.sh.in
lqvms-sequential-start.sh: $(srcdir)/lqvms-sequential-start.sh.in
lqvm-shutdown.sh: $(srcdir)/lqvm-shutdown.sh.in
lqvm-snap.sh: $(srcdir)/lqvm-snap.sh.in
lqvms-snap.sh: $(srcdir)/lqvms-snap.sh.in
lqvm-start.sh: $(srcdir)/lqvm-start.sh.in


bin_SCRIPTS = lqvms-backups.sh lqvms-sequential-start.sh lqvm-shutdown.sh \
	      lqvm-snap.sh lqvms-snap.sh lqvm-start.sh


EXTRA_DIST = $(srcdir)/lqvms-backups.sh.in \
	     $(srcdir)/lqvms-sequential-start.sh.in \
	     $(srcdir)/lqvm-shutdown.sh.in $(srcdir)/lqvm-snap.sh.in \
	     $(srcdir)/lqvms-snap.sh.in $(srcdir)/lqvm-start.sh.in

CLEANFILES = *.tmp lqvms-backups.sh lqvms-sequential-start.sh lqvm-shutdown.sh \
	     lqvm-snap.sh lqvms-snap.sh lqvm-start.sh

