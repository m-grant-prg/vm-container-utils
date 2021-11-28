#########################################################################
#									#
# Script ID: src/man/5/lqvm/Makefile.am					#
# Author: Copyright (C) 2020, 2021  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to generate conf manual pages from source.	#
#									#
#########################################################################

#########################################################################
#									#
# Changelog								#
#									#
# Date		Author	Version	Description				#
#									#
# 26/08/2020	MG	1.0.1	Initial release.			#
# 22/09/2020	MG	1.0.2	Separate lqvm and lxcu under man.	#
# 28/11/2021	MG	1.0.3	Tighten SPDX tag.			#
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

