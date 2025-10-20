#########################################################################
#									#
# Author: Copyright (C) 2020-2025  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoMake script file to generate vm-container-utils project from	#
# source.								#
#									#
#########################################################################


ACLOCAL_AMFLAGS = -I m4


AM_DISTCHECK_CONFIGURE_FLAGS =


SUBDIRS = src/lqvm/bash-comp
SUBDIRS += src/lqvm/conf/etc
SUBDIRS += src/lqvm/man/1 src/lqvm/man/5
SUBDIRS += src/lqvm/prg/bash
SUBDIRS += src/lxcu/bash-comp
SUBDIRS += src/lxcu/conf/etc
SUBDIRS += src/lxcu/conf/etc/debian/testing/apt
SUBDIRS += src/lxcu/conf/etc/debian/testing/apt/sources.list.d
SUBDIRS += src/lxcu/conf/etc/debian/testing/apt/trusted.gpg.d
SUBDIRS += src/lxcu/conf/etc/debian/testing/basic
SUBDIRS += src/lxcu/conf/etc/debian/testing/dev
SUBDIRS += src/lxcu/conf/etc/debian/testing/dosab
SUBDIRS += src/lxcu/conf/etc/debian/trixie/apt
SUBDIRS += src/lxcu/conf/etc/debian/trixie/apt/sources.list.d
SUBDIRS += src/lxcu/conf/etc/debian/trixie/apt/trusted.gpg.d
SUBDIRS += src/lxcu/conf/etc/debian/trixie/basic
SUBDIRS += src/lxcu/conf/etc/debian/trixie/dev
SUBDIRS += src/lxcu/conf/etc/debian/trixie/dosab
SUBDIRS += src/lxcu/conf/etc/debian/bookworm/apt
SUBDIRS += src/lxcu/conf/etc/debian/bookworm/apt/sources.list.d
SUBDIRS += src/lxcu/conf/etc/debian/bookworm/apt/trusted.gpg.d
SUBDIRS += src/lxcu/conf/etc/debian/bookworm/basic
SUBDIRS += src/lxcu/conf/etc/debian/bookworm/dev
SUBDIRS += src/lxcu/conf/etc/debian/bookworm/dosab
SUBDIRS += src/lxcu/conf/etc/fedora/42/basic
SUBDIRS += src/lxcu/conf/etc/fedora/42/dev
SUBDIRS += src/lxcu/conf/etc/fedora/42/dosab
SUBDIRS += src/lxcu/conf/etc/fedora/41/basic
SUBDIRS += src/lxcu/conf/etc/fedora/41/dev
SUBDIRS += src/lxcu/conf/etc/fedora/41/dosab
SUBDIRS += src/lxcu/conf/etc/opensuse/16.0/basic
SUBDIRS += src/lxcu/conf/etc/opensuse/16.0/dev
SUBDIRS += src/lxcu/conf/etc/opensuse/16.0/dosab
SUBDIRS += src/lxcu/conf/etc/opensuse/15.6/basic
SUBDIRS += src/lxcu/conf/etc/opensuse/15.6/dev
SUBDIRS += src/lxcu/conf/etc/opensuse/15.6/dosab
SUBDIRS += src/lxcu/conf/etc/ubuntu/noble/apt
SUBDIRS += src/lxcu/conf/etc/ubuntu/noble/apt/sources.list.d
SUBDIRS += src/lxcu/conf/etc/ubuntu/noble/apt/trusted.gpg.d
SUBDIRS += src/lxcu/conf/etc/ubuntu/noble/basic
SUBDIRS += src/lxcu/conf/etc/ubuntu/noble/dev
SUBDIRS += src/lxcu/conf/etc/ubuntu/noble/dosab
SUBDIRS += src/lxcu/conf/etc/ubuntu/jammy/apt
SUBDIRS += src/lxcu/conf/etc/ubuntu/jammy/apt/sources.list.d
SUBDIRS += src/lxcu/conf/etc/ubuntu/jammy/apt/trusted.gpg.d
SUBDIRS += src/lxcu/conf/etc/ubuntu/jammy/basic
SUBDIRS += src/lxcu/conf/etc/ubuntu/jammy/dev
SUBDIRS += src/lxcu/conf/etc/ubuntu/jammy/dosab
SUBDIRS += src/lxcu/man/1 src/lxcu/man/5
SUBDIRS += src/lxcu/prg/bash


doc_DATA = AUTHORS ChangeLog COPYING NEWS README


EXTRA_DIST = $(srcdir)/AUTHORS $(srcdir)/ChangeLog $(srcdir)/COPYING \
		$(srcdir)/NEWS $(srcdir)/README $(srcdir)/misc


srctarball:
	@cwd="$${PWD}" && \
	varg="$$(echo @PACKAGE_VERSION@ | sed -e s/\-rc/\~rc/ )" && \
	targ="$${cwd}/@PACKAGE_TARNAME@-$${varg}.tar.gz" && \
	cd @srcdir@ && \
	echo "making srctarball from @srcdir@" && \
	echo "GA	$${targ}" && \
	git archive --format=tar.gz \
		--prefix=@PACKAGE_TARNAME@-$${varg}/ \
		--output=$${targ} \
		HEAD && \
	cd -

