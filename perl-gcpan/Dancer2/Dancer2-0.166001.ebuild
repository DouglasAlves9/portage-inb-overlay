# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.7

EAPI=5

MODULE_AUTHOR="XSAWYERX"
MODULE_VERSION="0.166001"


inherit perl-module

DESCRIPTION="Lightweight yet powerful web application framework"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="alpha amd64 amd64-fbsd arm arm64 hppa ia64 m68k mips nios2 ppc ppc64 riscv s390 sh sparc sparc-fbsd x86 x86-fbsd   ppc-aix x86-freebsd x64-freebsd sparc64-freebsd hppa-hpux ia64-hpux x86-interix amd64-linux arm-linux ia64-linux ppc64-linux x86-linux ppc-macos x86-macos x64-macos m68k-mint x86-netbsd ppc-openbsd x86-openbsd x64-openbsd sparc-solaris sparc64-solaris x64-solaris x86-solaris x86-winnt x64-cygwin x86-cygwin"
IUSE=""

DEPEND="dev-perl/Moo
	dev-perl/Template-Toolkit
	perl-gcpan/CGI-Deurl-XS
	dev-perl/MooX-Types-MooseLike
	perl-gcpan/Scope-Upper
	dev-perl/HTTP-Body
	dev-perl/URI
	dev-perl/Crypt-URandom
	>=dev-perl/File-ShareDir-Install-0.90.0
	dev-perl/Test-Fatal
	dev-perl/JSON
	perl-gcpan/Hash-Merge-Simple
	dev-perl/Template-Tiny
	perl-gcpan/App-Cmd
	dev-perl/Config-Any
	dev-perl/Role-Tiny
	perl-gcpan/Plack-Middleware-FixMissingBodyInRedirect
	dev-perl/Safe-Isa
	dev-perl/HTTP-Message
	dev-perl/HTTP-Headers-Fast
	>=dev-perl/YAML-0.840.0
	dev-perl/Class-Load
	dev-perl/Plack
	dev-perl/HTTP-Date
	dev-perl/Math-Random-ISAAC-XS
	perl-gcpan/Plack-Middleware-RemoveRedundantBody
	perl-gcpan/URL-Encode-XS
	dev-perl/Import-Into
	dev-perl/HTTP-Cookies
	perl-gcpan/Return-MultiLevel
	>=dev-perl/Capture-Tiny-0.300.0
	dev-perl/JSON-XS"