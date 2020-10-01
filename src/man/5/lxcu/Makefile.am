#########################################################################
#									#
# Script ID: src/man/5/lxcu/Makefile.am					#
# Author: Copyright (C) 2020  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0					#
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
# 30/09/2020	MG	1.0.1	Initial release.			#
#									#
#########################################################################


lxcu.conf.5: Makefile
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

lxcu.conf.5: $(srcdir)/lxcu.conf.5.man.in

man_MANS = lxcu.conf.5

EXTRA_DIST = $(srcdir)/lxcu.conf.5.man.in

CLEANFILES = *.tmp lxcu.conf.5

