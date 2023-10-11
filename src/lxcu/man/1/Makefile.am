#########################################################################
#									#
# Author: Copyright (C) 2020-2023  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to generate LXCU manual pages from source.	#
#									#
#########################################################################


lxcu-attach.1 lxcu-copy.1 lxcu-create.1 lxcu-project-tmp.1 lxcu-start.1 \
	lxcu-upgrade.1: Makefile
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
	txt2manwrap $(@F) $$section "LXCU Scripts Manual" $@.tmp $@
	rm -f $@.tmp
lxcu-attach.1: $(srcdir)/lxcu-attach.1.man.in
lxcu-copy.1: $(srcdir)/lxcu-copy.1.man.in
lxcu-create.1: $(srcdir)/lxcu-create.1.man.in
lxcu-project-tmp.1: $(srcdir)/lxcu-project-tmp.1.man.in
lxcu-start.1: $(srcdir)/lxcu-start.1.man.in
lxcu-upgrade.1: $(srcdir)/lxcu-upgrade.1.man.in

man_MANS = lxcu-attach.1 lxcu-copy.1 lxcu-create.1 lxcu-project-tmp.1 \
	   lxcu-start.1 lxcu-upgrade.1

EXTRA_DIST = $(srcdir)/lxcu-attach.1.man.in $(srcdir)/lxcu-copy.1.man.in \
	     $(srcdir)/lxcu-create.1.man.in \
	     $(srcdir)/lxcu-project-tmp.1.man.in \
	     $(srcdir)/lxcu-start.1.man.in $(srcdir)/lxcu-upgrade.1.man.in

CLEANFILES = *.tmp lxcu-attach.1 lxcu-copy.1 lxcu-create.1 lxcu-project-tmp.1 \
	     lxcu-start.1 lxcu-upgrade.1

