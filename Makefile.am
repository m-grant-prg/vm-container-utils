#########################################################################
#									#
# Script ID: ./Makefile.am						#
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
#				Remove stretch.				#
#				Remove xenial.				#
# 21/04/2023	MG	1.0.16	Enable use of v1.1.1~rc1 type vesrion	#
#				numbers for source tarballs.		#
#				Add 38.					#
# 06/05/2023	MG	1.0.17	Remove EOL 36.				#
#				Add bookworm.				#
#				Remove EOL bionic.			#
# 09/06/2023	MG	1.0.18	Add 15.5				#
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

