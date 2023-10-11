#########################################################################
#									#
# Author: Copyright (C) 2020-2023  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to generate lxc utility scripts from source.	#
#									#
#########################################################################


lxcu-attach lxcu-copy lxcu-create lxcu-project-tmp lxcu-start \
	lxcu-upgrade: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).sh.in > $@.tmp
	mv $@.tmp $@
	chmod a+x $@
lxcu-attach: $(srcdir)/lxcu-attach.sh.in
lxcu-copy: $(srcdir)/lxcu-copy.sh.in
lxcu-create: $(srcdir)/lxcu-create.sh.in
lxcu-project-tmp: $(srcdir)/lxcu-project-tmp.sh.in
lxcu-start: $(srcdir)/lxcu-start.sh.in
lxcu-upgrade: $(srcdir)/lxcu-upgrade.sh.in


bin_SCRIPTS = lxcu-attach lxcu-copy lxcu-create lxcu-project-tmp lxcu-start \
	      lxcu-upgrade


EXTRA_DIST = $(srcdir)/lxcu-attach.sh.in $(srcdir)/lxcu-copy.sh.in \
	     $(srcdir)/lxcu-create.sh.in $(srcdir)/lxcu-project-tmp.sh.in \
	     $(srcdir)/lxcu-start.sh.in $(srcdir)/lxcu-upgrade.sh.in


CLEANFILES = *.tmp lxcu-attach lxcu-copy lxcu-create lxcu-project-tmp \
	     lxcu-start lxcu-upgrade

