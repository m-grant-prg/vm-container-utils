#########################################################################
#									#
# Author: Copyright (C) 2020, 2021, 2023  Mark Grant			#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to generate conf manual pages from source.	#
#									#
#########################################################################


lqvm.conf.5: Makefile
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

lqvm.conf.5: $(srcdir)/lqvm.conf.5.man.in

man_MANS = lqvm.conf.5

EXTRA_DIST = $(srcdir)/lqvm.conf.5.man.in

CLEANFILES = *.tmp lqvm.conf.5

