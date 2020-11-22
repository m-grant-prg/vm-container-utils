#########################################################################
#									#
# Script ID: src/prg/bash/lxcu/Makefile.am				#
# Author: Copyright (C) 2020  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0					#
#									#
# Purpose:								#
# AutoMake script file to generate lxc utility scripts from source.	#
#									#
#########################################################################

#########################################################################
#									#
# Changelog								#
#									#
# Date		Author	Version	Description				#
#									#
# 24/09/2020	MG	1.0.1	Initial release.			#
# 21/11/2020	MG	1.0.2	Add build of lxcu-copy.sh.		#
#									#
#########################################################################


lxcu-copy.sh lxcu-create.sh lxcu-project-tmp.sh lxcu-start.sh \
	lxcu-upgrade.sh: Makefile
	mkdir -p $(@D)
	rm -f $@ $@.tmp
	test -f ./$@.in || srcdir=$(srcdir)/; \
	$(edit) $${srcdir}$(@F).in > $@.tmp
	mv $@.tmp $@
	chmod a+x $@
lxcu-copy.sh: $(srcdir)/lxcu-copy.sh.in
lxcu-create.sh: $(srcdir)/lxcu-create.sh.in
lxcu-project-tmp.sh: $(srcdir)/lxcu-project-tmp.sh.in
lxcu-start.sh: $(srcdir)/lxcu-start.sh.in
lxcu-upgrade.sh: $(srcdir)/lxcu-upgrade.sh.in


bin_SCRIPTS = lxcu-copy.sh lxcu-create.sh lxcu-project-tmp.sh lxcu-start.sh \
	lxcu-upgrade.sh


EXTRA_DIST =  $(srcdir)/lxcu-copy.sh.in $(srcdir)/lxcu-create.sh.in \
	$(srcdir)/lxcu-project-tmp.sh.in $(srcdir)/lxcu-start.sh.in \
	$(srcdir)/lxcu-upgrade.sh.in


CLEANFILES = *.tmp lxcu-copy.sh lxcu-create.sh lxcu-project-tmp.sh \
	lxcu-start.sh lxcu-upgrade.sh

