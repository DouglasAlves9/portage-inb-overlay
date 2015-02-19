# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.5

EAPI=5

MODULE_AUTHOR="MONGODB"
MODULE_VERSION="v0.705.0.0"


inherit perl-module

DESCRIPTION="Official MongoDB Driver for Perl"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="alpha amd64 amd64-fbsd arm arm64 hppa ia64 m68k mips ppc ppc64 s390 sh sparc sparc-fbsd x86 x86-fbsd   ppc-aix x86-freebsd x64-freebsd sparc64-freebsd hppa-hpux ia64-hpux x86-interix amd64-linux arm-linux ia64-linux ppc64-linux x86-linux ppc-macos x86-macos x64-macos m68k-mint x86-netbsd ppc-openbsd x86-openbsd x64-openbsd sparc-solaris sparc64-solaris x64-solaris x86-solaris x86-winnt x86-cygwin"
IUSE=""

DEPEND="dev-perl/Try-Tiny
	dev-perl/Moose
	dev-perl/DateTime-Tiny
	>=dev-perl/Path-Tiny-0.12.0
	dev-perl/Tie-IxHash
	dev-perl/Data-Types
	dev-perl/Test-Fatal
	dev-perl/Test-Warn
	perl-gcpan/Safe-Isa
	>=dev-perl/DateTime-1.030.0
	dev-perl/File-Slurp
	dev-perl/namespace-clean
	dev-perl/boolean
	dev-perl/Data-Dump
	dev-perl/Throwable
	>=dev-perl/Test-Deep-0.110.0
	perl-gcpan/Syntax-Keyword-Junction
	>=dev-perl/Config-AutoConf-0.305
	virtual/perl-ExtUtils-MakeMaker"