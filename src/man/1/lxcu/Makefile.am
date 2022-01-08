#########################################################################
#									#
# Script ID: src/man/1/lxcu/Makefile.am					#
# Author: Copyright (C) 202-2022  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to generate LXCU manual pages from source.	#
#									#
#########################################################################

#########################################################################
#									#
# Changelog								#
#									#
# Date		Author	Version	Description				#
#									#
# 30/09/2020	MG	1.0.1	Initial release.			#
# 21/11/2020	MG	1.0.2	Add lxcu-copy.sh.			#
# 28/11/2021	MG	1.0.3	Tighten SPDX tag.			#
# 08/01/2022	MG	1.0.4	Add lxcu-attach.sh			#
#									#
#########################################################################


lxcu-attach.sh.1 lxcu-copy.sh.1 lxcu-create.sh.1 lxcu-project-tmp.sh.1 \
	lxcu-start.sh.1 lxcu-upgrade.sh.1: Makefile
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
lxcu-attach.sh.1: $(srcdir)/lxcu-attach.sh.1.man.in
lxcu-copy.sh.1: $(srcdir)/lxcu-copy.sh.1.man.in
lxcu-create.sh.1: $(srcdir)/lxcu-create.sh.1.man.in
lxcu-project-tmp.sh.1: $(srcdir)/lxcu-project-tmp.sh.1.man.in
lxcu-start.sh.1: $(srcdir)/lxcu-start.sh.1.man.in
lxcu-upgrade.sh.1: $(srcdir)/lxcu-upgrade.sh.1.man.in

man_MANS = lxcu-attach.sh.1 lxcu-copy.sh.1 lxcu-create.sh.1 \
	   lxcu-project-tmp.sh.1 lxcu-start.sh.1 lxcu-upgrade.sh.1

EXTRA_DIST = $(srcdir)/lxcu-attach.sh.1.man.in $(srcdir)/lxcu-copy.sh.1.man.in \
	     $(srcdir)/lxcu-create.sh.1.man.in \
	     $(srcdir)/lxcu-project-tmp.sh.1.man.in \
	     $(srcdir)/lxcu-start.sh.1.man.in $(srcdir)/lxcu-upgrade.sh.1.man.in

CLEANFILES = *.tmp lxcu-attach.sh.1 lxcu-copy.sh.1 lxcu-create.sh.1 \
	     lxcu-project-tmp.sh.1 lxcu-start.sh.1 lxcu-upgrade.sh.1

