#########################################################################
#									#
# Script ID: ./Makefile.am						#
# Author: Copyright (C) 2020  Mark Grant				#
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
#									#
#########################################################################


ACLOCAL_AMFLAGS = -I m4


AM_DISTCHECK_CONFIGURE_FLAGS = --enable-distcheckfake=yes


SUBDIRS = src/conf/etc/lqvm
SUBDIRS += src/man/1/lqvm src/man/5/lqvm
SUBDIRS += src/man/1/lxcu src/man/5/lxcu
SUBDIRS += src/prg/bash/lqvm
SUBDIRS += src/conf/etc/lxcu
SUBDIRS += src/conf/etc/lxcu/debian/apt
SUBDIRS += src/conf/etc/lxcu/debian/apt/sources.list.d
SUBDIRS += src/conf/etc/lxcu/debian/apt/trusted.gpg.d
SUBDIRS += src/conf/etc/lxcu/debian/basic src/conf/etc/lxcu/debian/dev
SUBDIRS += src/conf/etc/lxcu/debian/dosab
SUBDIRS += src/conf/etc/lxcu/ubuntu/apt
SUBDIRS += src/conf/etc/lxcu/ubuntu/apt/sources.list.d
SUBDIRS += src/conf/etc/lxcu/ubuntu/apt/trusted.gpg.d
SUBDIRS += src/conf/etc/lxcu/ubuntu/basic src/conf/etc/lxcu/ubuntu/dev
SUBDIRS += src/conf/etc/lxcu/ubuntu/dosab
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
		$(srcdir)/NEWS $(srcdir)/README

