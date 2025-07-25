#########################################################################
#									#
# Author: Copyright (C) 2020-2025  Mark Grant				#
#									#
# Released under the GPLv3 only.					#
# SPDX-License-Identifier: GPL-3.0-only					#
#									#
# Purpose:								#
# AutoConf script file to configure vm-container-utils project.		#
#									#
# configure cmd line syntax:						#
# ./configure	[--enable-bash-completion[={yes|no}]]			#
# Parameter defaults:							#
#	When specified on the CL, but without the [={yes|no}], the	#
#	default is yes.							#
#									#
# Parameters general description. For specifics please see inline	#
# comments at the point of definition:-					#
# --enable-bash-completion						#
#	Used to include the bash-completion elements in the build.	#
#	If not specified on the CL then the default is yes.		#
#									#
# Layout: (Only relevant sections will exist).				#
# SECTION  1: Initialisation & Setup					#
# SECTION  2: Architecture, target and host checks			#
# SECTION  3: Command line arguments					#
# SECTION  4: Compiler setup						#
# SECTION  5: Check for programs					#
# SECTION  6: Check for libraries					#
# SECTION  7: Check for header files					#
# SECTION  8: Check for types						#
# SECTION  9: Check for structures					#
# SECTION 10: Check for compiler characteristics			#
# SECTION 11: Check for library functions				#
# SECTION 12: Check for pkg-config files				#
# SECTION 13: Check for system services					#
# SECTION 14: Additional checks & variables				#
# SECTION 15: Specify the output files					#
#									#
#########################################################################


#########################################
#					#
# SECTION  1: Initialisation & Setup	#
#					#
#########################################

AC_COPYRIGHT([Copyright (C) 2020-2025  Mark Grant
	      This script is free to copy or distribute under the terms set out
	      in the package license. See COPYING for details.])

AC_REVISION([$Revision: 1.2.1 $])

AC_PREREQ([2.69])

#
# The following macro uses git, if available, to provide versioning information.
# The logic is as follows:-
# If git is not available, is not initialised or no commit has been made, then
# the local variable pkg_version will be used.
# If git is available but no Tag has been created then just a commit identifier
# will be used.
# If git is available and a tag has been created then the most recent tag, plus
# number of commits since the tag, plus a commit identifier will be used.
# The package version in ac init will be used to create an output variable which
# can be used by ac output and / or the sed setup below to substitute bookmarks
# in source files.
#
# Set pkg_version for a default hard-coded version number.
m4_define(pkg_version, 1.3.1)

AC_INIT([Utility scripts for containers and VMs], m4_esyscmd([ \
	git describe --always 1>/dev/null 2>/dev/null \
	&& sed --help 1>/dev/null 2>/dev/null \
	&& git describe --always | sed 's/v//' | tr -d '\n' \
	|| echo pkg_version | tr -d '\n']),
	[m.grant.prg@gmail.com], [vm-container-utils])

AC_MSG_NOTICE(initialisation and setup)

AC_SUBST(pkgversion, $PACKAGE_VERSION)

# Separate AutoTools generated files from project root.
AC_CONFIG_AUX_DIR([build-aux])

#
# Passes the options to all am files. Puts objects in the sub-directory
# containing the source. Forces tar to use --format=posix in make dist.
# This also checks :-	BSD install	make variable set	mkdir -p
#			gawk
#
AM_INIT_AUTOMAKE([-Wall -Werror subdir-objects tar-pax])

#
# Standard macros will be automatically placed in m4.
# Programmer defined macros should be placed in, say, m4extra which allows us
# to exclude the standard macros from being git tracked. This other directory
# must be specified as an include option in the Makefile.am ACLOCAL_AMFLAGS
# e.g.
# ACLOCAL_AMFLAGS = -I m4 -I m4extra
#
AC_CONFIG_MACRO_DIR([m4])


#########################################
#					#
# SECTION  3: Command line arguments	#
#					#
#########################################

AC_MSG_NOTICE(processing command line arguments)

#
# The following allows for an enable-bash-completion=yes/no command line option.
# If not specified on the CL the default is true.
# The conditional BASH_COMPLETION is made available to the makefiles.
#
AC_ARG_ENABLE(bash_completion,
	AS_HELP_STRING([--enable-bash-completion],
		       [build to include bash-completion]),
	[case "${enableval}" in
		yes) enable_bash_completion=true ;;
		no)  enable_bash_completion=false ;;
		*)
		AC_MSG_ERROR(bad value ${enableval} in enable-bash-completion);;
	esac],enable_bash_completion=true)
AM_CONDITIONAL(BASH_COMPLETION, test x$enable_bash_completion = xtrue)

AC_MSG_CHECKING([whether to include bash-completion in the build])
if test "x${enable_bash_completion}" = xtrue; then
	AC_MSG_RESULT([yes])
else
	AC_MSG_RESULT([no])
fi


#########################################
#					#
# SECTION  5: Check for programs	#
#					#
#########################################

AC_MSG_NOTICE(checking for basic programs that have AutoConf checks)

#
# The small set of tools you can expect to find on any machine.
#
# awk		date		grep		od
# basename	diff		join		rm
# cat		dirname		ln		rmdir
# cc		egrep		ls		sed
# chgrp		expr		mkdir		sleep
# chown		expr (‘|’)	mkfifo		sort
# chmod		expr (‘:’)	mknod		tar
# cmp		fgrep		mktemp		touch
# cp		find		mv		tr
#
# (For further information including limitations to the above, see Section 11.15
# in the GNU AutoConf Manual).
#
# If using am init automake, gl early or lt init the following programs are
# automatically checked:-
#
# am init automake
#	BSD install	mkdir -p	gawk
#
# gl early
#	ar	grep	egrep	ranlib
#
# lt init
#	fgrep	ranlib	sed
#
# Basic and AutoTools program checks.
#
AC_PROG_AWK
AC_PROG_EGREP
AC_PROG_FGREP
AC_PROG_GREP
AC_PROG_LN_S
AC_PROG_MKDIR_P
AC_PROG_SED

AC_MSG_NOTICE(checking for some standard AutoTools required programs)
AC_PROG_INSTALL

AC_MSG_NOTICE(checking for particular programs required by this build)
AC_CHECK_PROG(CHMOD, chmod, yes, no)
if test "x$CHMOD" = "xno" ; then
	AC_MSG_ERROR(chmod not found)
fi

AC_CHECK_PROG(TXT2MAN, txt2man, yes, no)
if test "x$TXT2MAN" = "xno" ; then
	AC_MSG_ERROR(txt2man not found)
fi

AC_CHECK_PROG(TXT2MANWRAP, txt2manwrap, yes, no)
if test "x$TXT2MANWRAP" = "xno" ; then
	AC_MSG_ERROR(txt2manwrap not found)
fi

AC_MSG_NOTICE(checking for particular programs required at build and run time)
AC_CHECK_PROG(BASH, bash, yes, no)
if test "x$BASH" = "xno" ; then
	AC_MSG_ERROR(bash not found)
fi

AC_CHECK_PROG(TAR, tar, yes, no)
if test "x$TAR" = "xno" ; then
	AC_MSG_ERROR(tar not found)
fi

AC_MSG_NOTICE(checking for particular programs required at run time)
AC_CHECK_PROG(CHOWN, chown, yes, no)
if test "x$CHOWN" = "xno" ; then
	AC_MSG_WARN(chown not found - needed at run time)
fi

AC_CHECK_PROG(ECHO, echo, yes, no)
if test "x$ECHO" = "xno" ; then
	AC_MSG_WARN(echo not found - needed at run time)
fi

AC_CHECK_PROG(FIND, find, yes, no)
if test "x$FIND" = "xno" ; then
	AC_MSG_WARN(find not found - needed at run time)
fi

AC_CHECK_PROG(GETOPT, getopt, yes, no)
if test "x$GETOPT" = "xno" ; then
	AC_MSG_WARN(getopt not found - needed at run time)
fi

AC_CHECK_PROG(IP, ip, yes, no)
if test "x$IP" = "xno" ; then
	AC_MSG_WARN(ip not found - needed at run time)
fi

AC_CHECK_PROG(LXC_ATTACH, lxc-attach, yes, no)
if test "x$LXC_ATTACH" = "xno" ; then
	AC_MSG_WARN(lxc-attach not found - needed at run time)
fi

AC_CHECK_PROG(LXC_COPY, lxc-copy, yes, no)
if test "x$LXC_COPY" = "xno" ; then
	AC_MSG_WARN(lxc-copy not found - needed at run time)
fi

AC_CHECK_PROG(LXC_CREATE, lxc-create, yes, no)
if test "x$LXC_CREATE" = "xno" ; then
	AC_MSG_WARN(lxc-create not found - needed at run time)
fi

AC_CHECK_PROG(LXC_START, lxc-start, yes, no)
if test "x$LXC_START" = "xno" ; then
	AC_MSG_WARN(lxc-start not found - needed at run time)
fi

AC_CHECK_PROG(LXC_STOP, lxc-stop, yes, no)
if test "x$LXC_STOP" = "xno" ; then
	AC_MSG_WARN(lxc-stop not found - needed at run time)
fi

AC_CHECK_PROG(MOUNT, mount, yes, no)
if test "x$MOUNT" = "xno" ; then
	AC_MSG_WARN(mount not found - needed at run time)
fi

AC_CHECK_PROG(PRINTF, printf, yes, no)
if test "x$PRINTF" = "xno" ; then
	AC_MSG_WARN(printf not found - needed at run time)
fi

AC_CHECK_PROG(QEMU_IMG, qemu-img, yes, no)
if test "x$QEMU_IMG" = "xno" ; then
	AC_MSG_WARN(qemu-img not found - needed at run time)
fi

AC_CHECK_PROG(VIRSH, virsh, yes, no)
if test "x$VIRSH" = "xno" ; then
	AC_MSG_WARN(virsh not found - needed at run time)
fi

AC_CHECK_PROG(XMLSTARLET, xmlstarlet, yes, no)
if test "x$XMLSTARLET" = "xno" ; then
	AC_MSG_WARN(xmlstarlet not found - needed at run time)
fi


#################################################
#						#
# SECTION 14: Additional checks & variables	#
#						#
#################################################

AC_MSG_NOTICE(processing additional checks and variables)

#
# Now set up an awk sequence to substitute bookmarks in script files with either
# standard GNU Directory Variables, or with programmer-defined variables set up
# using an AC_SUBST macro above. This awk sequence will be invoked at programmer
# discretion at sub-directory Makefile.am level.
# ----------------------
#
# prefix	/usr/local (typically)
#	exec_prefix	${prefix}
#		bindir	${exec_prefix}/bin	user executables
#		sbindir	${exec_prefix}/sbin	system admin executables
#		libexecdir	${exec_prefix}/libexec	program executables
#		libdir	${exec_prefix}/lib	object code libraries
#	sysconfdir	${prefix}/etc	read-only single-machine data
#	sharedstatedir	${prefix}/com	modifiable architecture-independent data
#	localstatedir	${prefix}/var	modifiable single-machine data
#	runstatedir	${localstatedir}/run
#	includedir	${prefix}/include	C header files
#	oldincludedir	$usr/include	C header files
#	datarootdir	${prefix}/share	read-only arch.-independent data root
#		localedir	${datarootdir}/locale	locale-dependent data
#		datadir	${datarootdir}	read-only architecture-independent data
#		mandir	${datarootdir}/man	man documentation
#		infodir	${datarootdir}/info	info documentation
#		docdir	${datarootdir}/doc/${PACKAGE}	documentation root
#			htmldir	${docdir}	html documentation
#			dvidir	${docdir}	dvi documentation
#			pdfdir	${docdir}	pdf documentation
#			psdir	${docdir}	ps documentation
#		lispdir	${datarootdir}/emacs/site-lisp **Often empty, no check**
#	pkgdatadir	${datarootdir}/${PACKAGE}
#	pkgincludedir	${includedir}/${PACKAGE}
#	pkglibdir	${libdir}/${PACKAGE}
#	pkglibexecdir	${libexecdir}/${PACKAGE}
#
AC_SUBST([edit], ["$AWK \
		'{ \
		gsub(/@bashlocation[@]/,"'"$(BASH)"'"); \
		gsub(/@pkgversion[@]/,"'"$(pkgversion)"'"); \
		gsub(/@prefix[@]/,"'"$(prefix)"'"); \
		gsub(/@exec_prefix[@]/,"'"$(exec_prefix)"'"); \
		gsub(/@bindir[@]/,"'"$(bindir)"'"); \
		gsub(/@sbindir[@]/,"'"$(sbindir)"'"); \
		gsub(/@libexecdir[@]/,"'"$(libexecdir)"'"); \
		gsub(/@libdir[@]/,"'"$(libdir)"'"); \
		gsub(/@sysconfdir[@]/,"'"$(sysconfdir)"'"); \
		gsub(/@sharedstatedir[@]/,"'"$(sharedstatedir)"'"); \
		gsub(/@localstatedir[@]/,"'"$(localstatedir)"'"); \
		gsub(/@runstatedir[@]/,"'"$(runstatedir)"'"); \
		gsub(/@includedir[@]/,"'"$(includedir)"'"); \
		gsub(/@oldincludedir[@]/,"'"$(oldincludedir)"'"); \
		gsub(/@datarootdir[@]/,"'"$(datarootdir)"'"); \
		gsub(/@localedir[@]/,"'"$(localedir)"'"); \
		gsub(/@datadir[@]/,"'"$(datadir)"'"); \
		gsub(/@mandir[@]/,"'"$(mandir)"'"); \
		gsub(/@infodir[@]/,"'"$(infodir)"'"); \
		gsub(/@docdir[@]/,"'"$(docdir)"'"); \
		gsub(/@htmldir[@]/,"'"$(htmldir)"'"); \
		gsub(/@dvidir[@]/,"'"$(dvidir)"'"); \
		gsub(/@pdfdir[@]/,"'"$(pdfdir)"'"); \
		gsub(/@psdir[@]/,"'"$(psdir)"'"); \
		gsub(/@pkgdatadir[@]/,"'"$(pkgdatadir)"'"); \
		gsub(/@pkgincludedir[@]/,"'"$(pkgincludedir)"'"); \
		gsub(/@pkglibdir[@]/,"'"$(pkglibdir)"'"); \
		gsub(/@pkglibexecdir[@]/,"'"$(pkglibexecdir)"'"); \
		print ; }'"])


#########################################
#					#
# SECTION 15: Specify the output files	#
#					#
#########################################

AC_MSG_NOTICE(processing output files)

#
# Non-Makefile files to generate.
# AC_CONFIG_FILES should not be used to substitute AutoConf Installation
# Directory Variables, (bindir and friends), except in Makefiles and pkg-config
# files. See GNU AutoConf manual section 4.8.2 Installation Directory Variables.
#

# Project Makefiles to create.
AC_CONFIG_FILES([Makefile
		src/lqvm/bash-comp/Makefile
		src/lqvm/conf/etc/Makefile
		src/lqvm/man/1/Makefile
		src/lqvm/man/5/Makefile
		src/lqvm/prg/bash/Makefile
		src/lxcu/bash-comp/Makefile
		src/lxcu/conf/etc/Makefile
		src/lxcu/conf/etc/debian/testing/apt/Makefile
		src/lxcu/conf/etc/debian/testing/apt/sources.list.d/Makefile
		src/lxcu/conf/etc/debian/testing/apt/trusted.gpg.d/Makefile
		src/lxcu/conf/etc/debian/testing/basic/Makefile
		src/lxcu/conf/etc/debian/testing/dev/Makefile
		src/lxcu/conf/etc/debian/testing/dosab/Makefile
		src/lxcu/conf/etc/debian/trixie/apt/Makefile
		src/lxcu/conf/etc/debian/trixie/apt/sources.list.d/Makefile
		src/lxcu/conf/etc/debian/trixie/apt/trusted.gpg.d/Makefile
		src/lxcu/conf/etc/debian/trixie/basic/Makefile
		src/lxcu/conf/etc/debian/trixie/dev/Makefile
		src/lxcu/conf/etc/debian/trixie/dosab/Makefile
		src/lxcu/conf/etc/debian/bookworm/apt/Makefile
		src/lxcu/conf/etc/debian/bookworm/apt/sources.list.d/Makefile
		src/lxcu/conf/etc/debian/bookworm/apt/trusted.gpg.d/Makefile
		src/lxcu/conf/etc/debian/bookworm/basic/Makefile
		src/lxcu/conf/etc/debian/bookworm/dev/Makefile
		src/lxcu/conf/etc/debian/bookworm/dosab/Makefile
		src/lxcu/conf/etc/fedora/42/basic/Makefile
		src/lxcu/conf/etc/fedora/42/dev/Makefile
		src/lxcu/conf/etc/fedora/42/dosab/Makefile
		src/lxcu/conf/etc/fedora/41/basic/Makefile
		src/lxcu/conf/etc/fedora/41/dev/Makefile
		src/lxcu/conf/etc/fedora/41/dosab/Makefile
		src/lxcu/conf/etc/opensuse/15.6/basic/Makefile
		src/lxcu/conf/etc/opensuse/15.6/dev/Makefile
		src/lxcu/conf/etc/opensuse/15.6/dosab/Makefile
		src/lxcu/conf/etc/opensuse/15.5/basic/Makefile
		src/lxcu/conf/etc/opensuse/15.5/dev/Makefile
		src/lxcu/conf/etc/opensuse/15.5/dosab/Makefile
		src/lxcu/conf/etc/ubuntu/noble/apt/Makefile
		src/lxcu/conf/etc/ubuntu/noble/apt/sources.list.d/Makefile
		src/lxcu/conf/etc/ubuntu/noble/apt/trusted.gpg.d/Makefile
		src/lxcu/conf/etc/ubuntu/noble/basic/Makefile
		src/lxcu/conf/etc/ubuntu/noble/dev/Makefile
		src/lxcu/conf/etc/ubuntu/noble/dosab/Makefile
		src/lxcu/conf/etc/ubuntu/jammy/apt/Makefile
		src/lxcu/conf/etc/ubuntu/jammy/apt/sources.list.d/Makefile
		src/lxcu/conf/etc/ubuntu/jammy/apt/trusted.gpg.d/Makefile
		src/lxcu/conf/etc/ubuntu/jammy/basic/Makefile
		src/lxcu/conf/etc/ubuntu/jammy/dev/Makefile
		src/lxcu/conf/etc/ubuntu/jammy/dosab/Makefile
		src/lxcu/man/1/Makefile
		src/lxcu/man/5/Makefile
		src/lxcu/prg/bash/Makefile])

AC_OUTPUT

