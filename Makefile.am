#########################################################################
#									#
# Author: Copyright (C) 2020-2026  Mark Grant				#
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
SUBDIRS += src/lxcu/conf/etc/debian/testing/apt/sources.list.d
SUBDIRS += src/lxcu/conf/etc/debian/testing/basic
SUBDIRS += src/lxcu/conf/etc/debian/testing/dev
SUBDIRS += src/lxcu/conf/etc/debian/testing/dosab
SUBDIRS += src/lxcu/conf/etc/debian/trixie/apt/sources.list.d
SUBDIRS += src/lxcu/conf/etc/debian/trixie/basic
SUBDIRS += src/lxcu/conf/etc/debian/trixie/dev
SUBDIRS += src/lxcu/conf/etc/debian/trixie/dosab
SUBDIRS += src/lxcu/conf/etc/debian/bookworm/apt/sources.list.d
SUBDIRS += src/lxcu/conf/etc/debian/bookworm/basic
SUBDIRS += src/lxcu/conf/etc/debian/bookworm/dev
SUBDIRS += src/lxcu/conf/etc/debian/bookworm/dosab
SUBDIRS += src/lxcu/conf/etc/fedora/44/basic
SUBDIRS += src/lxcu/conf/etc/fedora/44/dev
SUBDIRS += src/lxcu/conf/etc/fedora/44/dosab
SUBDIRS += src/lxcu/conf/etc/fedora/43/basic
SUBDIRS += src/lxcu/conf/etc/fedora/43/dev
SUBDIRS += src/lxcu/conf/etc/fedora/43/dosab
SUBDIRS += src/lxcu/conf/etc/opensuse/16.0/basic
SUBDIRS += src/lxcu/conf/etc/opensuse/16.0/dev
SUBDIRS += src/lxcu/conf/etc/opensuse/16.0/dosab
SUBDIRS += src/lxcu/conf/etc/ubuntu/resolute/apt/sources.list.d
SUBDIRS += src/lxcu/conf/etc/ubuntu/resolute/basic
SUBDIRS += src/lxcu/conf/etc/ubuntu/resolute/dev
SUBDIRS += src/lxcu/conf/etc/ubuntu/resolute/dosab
SUBDIRS += src/lxcu/conf/etc/ubuntu/noble/apt/sources.list.d
SUBDIRS += src/lxcu/conf/etc/ubuntu/noble/basic
SUBDIRS += src/lxcu/conf/etc/ubuntu/noble/dev
SUBDIRS += src/lxcu/conf/etc/ubuntu/noble/dosab
SUBDIRS += src/lxcu/conf/etc/ubuntu/jammy/apt/sources.list.d
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
	targ="$${cwd}/@PACKAGE_TARNAME@-@PACKAGE_VERSION@.tar.gz" && \
	cd @srcdir@ && \
	echo "making srctarball from @srcdir@" && \
	echo "GA	$${targ}" && \
	git archive --format=tar.gz \
		--prefix=@PACKAGE_TARNAME@-@PACKAGE_VERSION@/ \
		--output=$${targ} \
		HEAD && \
	cd -


sign_tarball:
	rm -f @PACKAGE_TARNAME@-@PACKAGE_VERSION@.tar.gz.asc
	gpg --armor --detach-sign @PACKAGE_TARNAME@-@PACKAGE_VERSION@.tar.gz

