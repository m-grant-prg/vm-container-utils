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


lqvms-backups.sh.1 lqvm-shutdown.sh.1 lqvm-snap.sh.1 \
	lqvms-sequential-start.sh.1 lqvms-snap.sh.1 lqvm-start.sh.1: Makefile
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
lqvms-backups.sh.1: $(srcdir)/lqvms-backups.sh.1.man.in
lqvm-shutdown.sh.1: $(srcdir)/lqvm-shutdown.sh.1.man.in
lqvm-snap.sh.1: $(srcdir)/lqvm-snap.sh.1.man.in
lqvms-sequential-start.sh.1: $(srcdir)/lqvms-sequential-start.sh.1.man.in
lqvms-snap.sh.1: $(srcdir)/lqvms-snap.sh.1.man.in
lqvm-start.sh.1: $(srcdir)/lqvm-start.sh.1.man.in

man_MANS = lqvms-backups.sh.1 lqvm-shutdown.sh.1 lqvm-snap.sh.1 \
	   lqvms-sequential-start.sh.1 lqvms-snap.sh.1 lqvm-start.sh.1

EXTRA_DIST = $(srcdir)/lqvms-backups.sh.1.man.in \
	     $(srcdir)/lqvm-shutdown.sh.1.man.in \
	     $(srcdir)/lqvm-snap.sh.1.man.in \
	     $(srcdir)/lqvms-sequential-start.sh.1.man.in \
	     $(srcdir)/lqvms-snap.sh.1.man.in $(srcdir)/lqvm-start.sh.1.man.in

CLEANFILES = *.tmp lqvms-backups.sh.1 lqvm-shutdown.sh.1 lqvm-snap.sh.1 \
	     lqvms-sequential-start.sh.1 lqvms-snap.sh.1 lqvm-start.sh.1

