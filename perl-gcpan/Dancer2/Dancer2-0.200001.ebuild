# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.7

EAPI=5

MODULE_AUTHOR="XSAWYERX"
MODULE_VERSION="0.200001"


inherit perl-module

DESCRIPTION="Lightweight yet powerful web application framework"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="alpha amd64 amd64-fbsd arm arm64 hppa ia64 m68k mips nios2 ppc ppc64 riscv s390 sh sparc sparc-fbsd x86 x86-fbsd   ppc-aix x86-freebsd x64-freebsd sparc64-freebsd hppa-hpux ia64-hpux x86-interix amd64-linux arm-linux ia64-linux ppc64-linux x86-linux ppc-macos x86-macos x64-macos m68k-mint x86-netbsd ppc-openbsd x86-openbsd x64-openbsd sparc-solaris sparc64-solaris x64-solaris x86-solaris x86-winnt x64-cygwin x86-cygwin"
IUSE=""

DEPEND="perl-gcpan/CGI-Deurl-XS
	dev-perl/Type-Tiny
	dev-perl/Crypt-URandom
	dev-perl/HTTP-Message
	perl-gcpan/App-Cmd
	>=dev-perl/YAML-0.840.0
	dev-perl/Math-Random-ISAAC-XS
	dev-perl/HTTP-Cookies
	>=dev-perl/Plack-1.3.900
	dev-perl/Type-Tiny-XS
	dev-perl/Exporter-Tiny
	>=dev-perl/File-ShareDir-Install-0.90.0
	perl-gcpan/URL-Encode-XS
	dev-perl/Test-Fatal
	>=dev-perl/Capture-Tiny-0.300.0
	dev-perl/URI
	dev-perl/Hash-MultiValue
	dev-perl/HTTP-Date
	dev-perl/JSON-XS
	dev-perl/Moo
	dev-perl/File-ShareDir
	perl-gcpan/Hash-Merge-Simple
	perl-gcpan/Scope-Upper
	dev-perl/HTTP-Headers-Fast
	dev-perl/Safe-Isa
	dev-perl/HTTP-Body
	dev-perl/Template-Toolkit
	dev-perl/Module-Runtime
	perl-gcpan/Return-MultiLevel
	perl-gcpan/Plack-Middleware-RemoveRedundantBody
	dev-perl/Import-Into
	dev-perl/Config-Any
	dev-perl/JSON
	dev-perl/Template-Tiny
	perl-gcpan/Plack-Middleware-FixMissingBodyInRedirect
	dev-perl/Role-Tiny
	dev-lang/perl"
