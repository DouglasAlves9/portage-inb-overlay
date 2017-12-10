# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.9

EAPI=5

MODULE_AUTHOR="SKAJI"
MODULE_VERSION="3.0.13"
MY_PV="v${MODULE_VERSION}"

inherit perl-module

DESCRIPTION="CPAN module authoring tool"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="dev-perl/Test-Pod
	dev-perl/Module-Build
	>=perl-gcpan/Text-MicroTemplate-0.24
	dev-perl/App-cpanminus
	dev-perl/File-Copy-Recursive
	dev-perl/Moo
	dev-perl/URI
	perl-gcpan/Config-Identity
	>=perl-gcpan/Data-Section-Simple-0.07
	dev-perl/JSON
	dev-perl/Try-Tiny
	dev-perl/Test-CPAN-Meta
	dev-perl/CPAN-Uploader
	dev-perl/File-pushd
	dev-perl/Version-Next
	>=perl-gcpan/Module-CPANfile-1.100.2
	dev-perl/Module-Runtime
	dev-perl/Software-License
	dev-perl/Pod-Markdown
	>=perl-gcpan/TOML-0.97
	>=perl-gcpan/Spellunker-0.4.0
	>=dev-perl/Module-Build-Tiny-0.39.0
	dev-perl/Test-Requires
	dev-perl/Test-Output
	dev-perl/Test-MinimumVersion
	dev-perl/File-Which
	perl-gcpan/Test-PAUSE-Permissions
	dev-lang/perl"