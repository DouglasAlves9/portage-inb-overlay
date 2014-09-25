# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.5

EAPI=5

MODULE_AUTHOR="EKAWAS"
MODULE_VERSION="1.1.7"


inherit perl-module

DESCRIPTION="Perl module for building clients and servers which resolve and perform metadata queries on LSIDs. LS::Base - This package is the base package that all other LS packages inherit from."

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="alpha amd64 amd64-fbsd arm arm64 hppa ia64 m68k mips ppc ppc64 s390 sh sparc sparc-fbsd x86 x86-fbsd   ppc-aix x86-freebsd x64-freebsd sparc64-freebsd hppa-hpux ia64-hpux x86-interix amd64-linux arm-linux ia64-linux ppc64-linux x86-linux ppc-macos x86-macos x64-macos m68k-mint x86-netbsd ppc-openbsd x86-openbsd x64-openbsd sparc-solaris sparc64-solaris x64-solaris x86-solaris x86-winnt x86-cygwin"
IUSE=""

DEPEND=">=dev-perl/URI-1.600.0
	>=dev-perl/MIME-tools-5.503.0
	>=dev-perl/XML-XPath-1.130.0
	>=dev-perl/Net-DNS-0.720.0
	>=perl-gcpan/RDF-Core-0.51
	>=dev-perl/SOAP-Lite-0.715.0
	dev-lang/perl"
