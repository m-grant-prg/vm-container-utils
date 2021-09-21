#########################################################################
#									#
# Script ID: ./Makefile.am						#
# Author: Copyright (C) 2020, 2021  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0					#
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
#									#
#########################################################################


ACLOCAL_AMFLAGS = -I m4


AM_DISTCHECK_CONFIGURE_FLAGS = --enable-distcheckfake=yes


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
SUBDIRS += src/conf/etc/lxcu/fedora/33/basic
SUBDIRS += src/conf/etc/lxcu/fedora/33/dev
SUBDIRS += src/conf/etc/lxcu/fedora/33/dosab
SUBDIRS += src/conf/etc/lxcu/fedora/34/basic
SUBDIRS += src/conf/etc/lxcu/fedora/34/dev
SUBDIRS += src/conf/etc/lxcu/fedora/34/dosab
SUBDIRS += src/conf/etc/lxcu/opensuse/15.2/basic
SUBDIRS += src/conf/etc/lxcu/opensuse/15.2/dev
SUBDIRS += src/conf/etc/lxcu/opensuse/15.2/dosab
SUBDIRS += src/conf/etc/lxcu/opensuse/15.3/basic
SUBDIRS += src/conf/etc/lxcu/opensuse/15.3/dev
SUBDIRS += src/conf/etc/lxcu/opensuse/15.3/dosab
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

