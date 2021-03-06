# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.5

EAPI=5

MODULE_AUTHOR="GWILLIAMS"
MODULE_VERSION="2.911"


inherit perl-module

DESCRIPTION="A complete SPARQL 1.1 Query and Update implementation for use with RDF::Trine."

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="alpha amd64 amd64-fbsd arm arm64 hppa ia64 m68k mips ppc ppc64 s390 sh sparc sparc-fbsd x86 x86-fbsd   ppc-aix x86-freebsd x64-freebsd sparc64-freebsd hppa-hpux ia64-hpux x86-interix amd64-linux arm-linux ia64-linux ppc64-linux x86-linux ppc-macos x86-macos x64-macos m68k-mint x86-netbsd ppc-openbsd x86-openbsd x64-openbsd sparc-solaris sparc64-solaris x64-solaris x86-solaris x86-winnt x86-cygwin"
IUSE=""

DEPEND="dev-perl/Data-UUID
	perl-gcpan/Getopt-Simple
	>=perl-gcpan/Geo-Distance-0.20
	dev-perl/libwww-perl
	>=dev-perl/URI-1.600.0
	dev-perl/Parse-RecDescent
	dev-perl/DateTime-Format-W3CDTF
	perl-gcpan/RDF-Trine
	dev-perl/Set-Scalar
	perl-gcpan/Test-JSON
	dev-perl/Test-Exception"
