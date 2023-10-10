#########################################################################
#									#
# Author: Copyright (C) 2020-2023  Mark Grant				#
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


SUBDIRS = src/conf/etc/lqvm
SUBDIRS += src/man/1/lqvm src/man/5/lqvm
SUBDIRS += src/man/1/lxcu src/man/5/lxcu
SUBDIRS += src/prg/bash/lqvm
SUBDIRS += src/conf/etc/lxcu
SUBDIRS += src/conf/etc/lxcu/debian/bookworm/apt
SUBDIRS += src/conf/etc/lxcu/debian/bookworm/apt/sources.list.d
SUBDIRS += src/conf/etc/lxcu/debian/bookworm/apt/trusted.gpg.d
SUBDIRS += src/conf/etc/lxcu/debian/bookworm/basic
SUBDIRS += src/conf/etc/lxcu/debian/bookworm/dev
SUBDIRS += src/conf/etc/lxcu/debian/bookworm/dosab
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
SUBDIRS += src/conf/etc/lxcu/debian/testing/apt
SUBDIRS += src/conf/etc/lxcu/debian/testing/apt/sources.list.d
SUBDIRS += src/conf/etc/lxcu/debian/testing/apt/trusted.gpg.d
SUBDIRS += src/conf/etc/lxcu/debian/testing/basic
SUBDIRS += src/conf/etc/lxcu/debian/testing/dev
SUBDIRS += src/conf/etc/lxcu/debian/testing/dosab
SUBDIRS += src/conf/etc/lxcu/fedora/38/basic
SUBDIRS += src/conf/etc/lxcu/fedora/38/dev
SUBDIRS += src/conf/etc/lxcu/fedora/38/dosab
SUBDIRS += src/conf/etc/lxcu/fedora/37/basic
SUBDIRS += src/conf/etc/lxcu/fedora/37/dev
SUBDIRS += src/conf/etc/lxcu/fedora/37/dosab
SUBDIRS += src/conf/etc/lxcu/opensuse/15.5/basic
SUBDIRS += src/conf/etc/lxcu/opensuse/15.5/dev
SUBDIRS += src/conf/etc/lxcu/opensuse/15.5/dosab
SUBDIRS += src/conf/etc/lxcu/opensuse/15.4/basic
SUBDIRS += src/conf/etc/lxcu/opensuse/15.4/dev
SUBDIRS += src/conf/etc/lxcu/opensuse/15.4/dosab
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
SUBDIRS += src/prg/bash/lxcu


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

