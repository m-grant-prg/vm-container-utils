#########################################################################
#									#
# Script ID: ./Makefile.am						#
# Author: Copyright (C) 2020, 2022, 2023  Mark Grant			#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to generate vm-container-utils project from	#
# source.								#
#									#
#########################################################################

#########################################################################
#									#
# Changelog								#
#									#
# Date		Author	Version	Description				#
#									#
# 19/08/2020	MG	1.0.1	Initial release.			#
# 22/09/2020	MG	1.0.2	Separate lqvm and lxcu under conf and	#
#				man.					#
# 22/08/2021	MG	1.0.3	Drop config files down to dist/rel from	#
#				just dist.				#
#				Add bullseye.				#
# 13/09/2021	MG	1.0.4	Add misc subdir to the distribution.	#
# 17/09/2021	MG	1.0.5	Add Fedora.				#
# 20/09/2021	MG	1.0.6	Add openSUSE.				#
# 04/11/2021	MG	1.0.7	Fedora: Add 35 and remove 33.		#
# 28/11/2021	MG	1.0.8	Tighten SPDX tag.			#
# 03/05/2022	MG	1.0.9	Add jammy.				#
# 08/05/2022	MG	1.0.10	Remove EOL openSUSE Leap 15.2		#
# 23/05/2022	MG	1.0.11	Replace EOL Fedora 34 with 36.		#
# 14/06/2022	MG	1.0.12	Add openSUSE 15.4			#
# 12/10/2022	MG	1.0.13	Remove superfluous disctcheckfake.	#
# 23/11/2022	MG	1.0.14	Remove EOL 35.				#
#				Remove EOL 15.3				#
#				Add 37.					#
# 30/03/2023	MG	1.0.15	Add Debian testing.			#
#									#
#########################################################################


ACLOCAL_AMFLAGS = -I m4


AM_DISTCHECK_CONFIGURE_FLAGS =


SUBDIRS = src/conf/etc/lqvm
SUBDIRS += src/man/1/lqvm src/man/5/lqvm
SUBDIRS += src/man/1/lxcu src/man/5/lxcu
SUBDIRS += src/prg/bash/lqvm
SUBDIRS += src/conf/etc/lxcu
SUBDIRS += src/conf/etc/lxcu/debian/bullseye/apt
SUBDIRS += src/conf/etc/lxcu/debian/bullseye/apt/sources.list.d
SUBDIRS += src/conf/etc/lxcu/debian/bullseye/apt/trusted.gpg.d
SUBDIRS += src/conf/etc/lxcu/debian/bullseye/basic
SUBDIRS += src/conf/etc/lxcu/debian/bullseye/dev
SUBDIRS += src/conf/etc/lxcu/debian/bullseye/dosab
SUBDIRS += src/conf/etc/lxcu/debian/buster/apt
SUBDIRS += src/conf/etc/lxcu/debian/buster/apt/sources.list.d
SUBDIRS += src/conf/etc/lxcu/debian/buster/apt/trusted.gpg.d
SUBDIRS += src/conf/etc/lxcu/debian/buster/basic
SUBDIRS += src/conf/etc/lxcu/debian/buster/dev
SUBDIRS += src/conf/etc/lxcu/debian/buster/dosab
SUBDIRS += src/conf/etc/lxcu/debian/stretch/apt
SUBDIRS += src/conf/etc/lxcu/debian/stretch/apt/sources.list.d
SUBDIRS += src/conf/etc/lxcu/debian/stretch/apt/trusted.gpg.d
SUBDIRS += src/conf/etc/lxcu/debian/stretch/basic
SUBDIRS += src/conf/etc/lxcu/debian/stretch/dev
SUBDIRS += src/conf/etc/lxcu/debian/stretch/dosab
SUBDIRS += src/conf/etc/lxcu/debian/testing/apt
SUBDIRS += src/conf/etc/lxcu/debian/testing/apt/sources.list.d
SUBDIRS += src/conf/etc/lxcu/debian/testing/apt/trusted.gpg.d
SUBDIRS += src/conf/etc/lxcu/debian/testing/basic
SUBDIRS += src/conf/etc/lxcu/debian/testing/dev
SUBDIRS += src/conf/etc/lxcu/debian/testing/dosab
SUBDIRS += src/conf/etc/lxcu/fedora/37/basic
SUBDIRS += src/conf/etc/lxcu/fedora/37/dev
SUBDIRS += src/conf/etc/lxcu/fedora/37/dosab
SUBDIRS += src/conf/etc/lxcu/fedora/36/basic
SUBDIRS += src/conf/etc/lxcu/fedora/36/dev
SUBDIRS += src/conf/etc/lxcu/fedora/36/dosab
SUBDIRS += src/conf/etc/lxcu/opensuse/15.4/basic
SUBDIRS += src/conf/etc/lxcu/opensuse/15.4/dev
SUBDIRS += src/conf/etc/lxcu/opensuse/15.4/dosab
SUBDIRS += src/conf/etc/lxcu/ubuntu/bionic/apt
SUBDIRS += src/conf/etc/lxcu/ubuntu/bionic/apt/sources.list.d
SUBDIRS += src/conf/etc/lxcu/ubuntu/bionic/apt/trusted.gpg.d
SUBDIRS += src/conf/etc/lxcu/ubuntu/bionic/basic
SUBDIRS += src/conf/etc/lxcu/ubuntu/bionic/dev
SUBDIRS += src/conf/etc/lxcu/ubuntu/bionic/dosab
SUBDIRS += src/conf/etc/lxcu/ubuntu/focal/apt
SUBDIRS += src/conf/etc/lxcu/ubuntu/focal/apt/sources.list.d
SUBDIRS += src/conf/etc/lxcu/ubuntu/focal/apt/trusted.gpg.d
SUBDIRS += src/conf/etc/lxcu/ubuntu/focal/basic
SUBDIRS += src/conf/etc/lxcu/ubuntu/focal/dev
SUBDIRS += src/conf/etc/lxcu/ubuntu/focal/dosab
SUBDIRS += src/conf/etc/lxcu/ubuntu/jammy/apt
SUBDIRS += src/conf/etc/lxcu/ubuntu/jammy/apt/sources.list.d
SUBDIRS += src/conf/etc/lxcu/ubuntu/jammy/apt/trusted.gpg.d
SUBDIRS += src/conf/etc/lxcu/ubuntu/jammy/basic
SUBDIRS += src/conf/etc/lxcu/ubuntu/jammy/dev
SUBDIRS += src/conf/etc/lxcu/ubuntu/jammy/dosab
SUBDIRS += src/conf/etc/lxcu/ubuntu/xenial/apt
SUBDIRS += src/conf/etc/lxcu/ubuntu/xenial/apt/sources.list.d
SUBDIRS += src/conf/etc/lxcu/ubuntu/xenial/apt/trusted.gpg.d
SUBDIRS += src/conf/etc/lxcu/ubuntu/xenial/basic
SUBDIRS += src/conf/etc/lxcu/ubuntu/xenial/dev
SUBDIRS += src/conf/etc/lxcu/ubuntu/xenial/dosab
SUBDIRS += src/prg/bash/lxcu


doc_DATA = AUTHORS ChangeLog COPYING NEWS README

srctarball:
	@cwd="$${PWD}" && \
	targ="$${cwd}/@PACKAGE_TARNAME@-@PACKAGE_VERSION@.tar.gz" && \
	cd @srcdir@ && \
	echo "making srctarball from @srcdir@" && \
	echo "GA	$${targ}" && \
	git archive --format=tar.gz \
		--prefix=@PACKAGE_TARNAME@-@PACKAGE_VERSION@/ \
		--output=$${targ} \
		HEAD && \
	cd -

EXTRA_DIST = $(srcdir)/AUTHORS $(srcdir)/ChangeLog $(srcdir)/COPYING \
		$(srcdir)/NEWS $(srcdir)/README $(srcdir)/misc

