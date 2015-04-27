# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.6

EAPI=5

MODULE_AUTHOR="DRTECH"
MODULE_VERSION="1.19"


inherit perl-module

DESCRIPTION="The official client for Elasticsearch"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="alpha amd64 amd64-fbsd arm arm64 hppa ia64 m68k mips ppc ppc64 s390 sh sparc sparc-fbsd x86 x86-fbsd   ppc-aix x86-freebsd x64-freebsd sparc64-freebsd hppa-hpux ia64-hpux x86-interix amd64-linux arm-linux ia64-linux ppc64-linux x86-linux ppc-macos x86-macos x64-macos m68k-mint x86-netbsd ppc-openbsd x86-openbsd x64-openbsd sparc-solaris sparc64-solaris x64-solaris x86-solaris x86-winnt x86-cygwin"
IUSE=""

DEPEND="dev-perl/URI
	dev-perl/Try-Tiny
	dev-perl/HTTP-Message
	>=dev-perl/Log-Any-1.02
	dev-perl/namespace-clean
	>=dev-perl/Package-Stash-0.340.0
	perl-gcpan/Any-URI-Escape
	perl-gcpan/Log-Any-Adapter-Callback
	dev-perl/Moo
	dev-perl/Test-Deep
	dev-perl/Test-Exception
	>=virtual/perl-HTTP-Tiny-0.43.0
	perl-gcpan/URI-Escape-XS
	>=perl-gcpan/JSON-MaybeXS-1.003003
	>=perl-gcpan/Hijk-0.19
	dev-perl/Module-Runtime
	dev-perl/IO-Socket-SSL
	dev-perl/Sub-Exporter"
