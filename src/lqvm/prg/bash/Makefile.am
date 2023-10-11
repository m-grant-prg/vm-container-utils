#########################################################################
#									#
# Author: Copyright (C) 2020, 2021, 2023  Mark Grant			#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to generate lqvm scripts from source.		#
#									#
#########################################################################


lqvms-backups lqvms-sequential-start lqvm-shutdown lqvm-snap lqvms-snap \
	lqvm-start: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).sh.in > $@.tmp
	mv $@.tmp $@
	chmod a+x $@
lqvms-backups: $(srcdir)/lqvms-backups.sh.in
lqvms-sequential-start: $(srcdir)/lqvms-sequential-start.sh.in
lqvm-shutdown: $(srcdir)/lqvm-shutdown.sh.in
lqvm-snap: $(srcdir)/lqvm-snap.sh.in
lqvms-snap: $(srcdir)/lqvms-snap.sh.in
lqvm-start: $(srcdir)/lqvm-start.sh.in


bin_SCRIPTS = lqvms-backups lqvms-sequential-start lqvm-shutdown lqvm-snap \
	      lqvms-snap lqvm-start


EXTRA_DIST = $(srcdir)/lqvms-backups.sh.in \
	     $(srcdir)/lqvms-sequential-start.sh.in \
	     $(srcdir)/lqvm-shutdown.sh.in $(srcdir)/lqvm-snap.sh.in \
	     $(srcdir)/lqvms-snap.sh.in $(srcdir)/lqvm-start.sh.in

CLEANFILES = *.tmp lqvms-backups lqvms-sequential-start lqvm-shutdown \
	     lqvm-snap lqvms-snap lqvm-start

