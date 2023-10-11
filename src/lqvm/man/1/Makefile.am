#########################################################################
#									#
# Author: Copyright (C) 2020, 2021, 2023  Mark Grant			#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to generate LQVM manual pages from source.	#
#									#
#########################################################################


lqvms-backups.1 lqvm-shutdown.1 lqvm-snap.1 lqvms-sequential-start.1 \
	lqvms-snap.1 lqvm-start.1: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	$(edit) $(srcdir)/$(@F).man.in > $@.tmp
	targfile=$(@F);	\
	if [[ $$targfile == *"."* ]]; then \
		if [[ $${targfile##*.} == "" ]]; then \
			echo "Source file suffix used as section but empty."; \
			exit 1; \
		else \
			section=$${targfile##*.}; \
		fi; \
	else \
		echo "Source file suffix used as section but no dot & empty."; \
		exit 1; \
	fi; \
	txt2manwrap $(@F) $$section "LQVM Scripts Manual" $@.tmp $@
	rm -f $@.tmp
lqvms-backups.1: $(srcdir)/lqvms-backups.1.man.in
lqvm-shutdown.1: $(srcdir)/lqvm-shutdown.1.man.in
lqvm-snap.1: $(srcdir)/lqvm-snap.1.man.in
lqvms-sequential-start.1: $(srcdir)/lqvms-sequential-start.1.man.in
lqvms-snap.1: $(srcdir)/lqvms-snap.1.man.in
lqvm-start.1: $(srcdir)/lqvm-start.1.man.in

man_MANS = lqvms-backups.1 lqvm-shutdown.1 lqvm-snap.1 \
	   lqvms-sequential-start.1 lqvms-snap.1 lqvm-start.1

EXTRA_DIST = $(srcdir)/lqvms-backups.1.man.in $(srcdir)/lqvm-shutdown.1.man.in \
	     $(srcdir)/lqvm-snap.1.man.in \
	     $(srcdir)/lqvms-sequential-start.1.man.in \
	     $(srcdir)/lqvms-snap.1.man.in $(srcdir)/lqvm-start.1.man.in

CLEANFILES = *.tmp lqvms-backups.1 lqvm-shutdown.1 lqvm-snap.1 \
	     lqvms-sequential-start.1 lqvms-snap.1 lqvm-start.1

