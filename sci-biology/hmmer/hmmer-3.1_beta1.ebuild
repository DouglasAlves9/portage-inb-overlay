## Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sci-biology/hmmer/hmmer-3.0.ebuild,v 1.6 2012/06/28 16:50:49 jlec Exp $

EAPI=4

inherit eutils

DESCRIPTION="Sequence analysis using profile hidden Markov models"
HOMEPAGE="http://hmmer.janelia.org/"
MY_PV="${PV/_beta/b}"
MY_P="${PN}-${MY_PV}"
S="${WORKDIR}/${MY_P}"
SRC_URI="ftp://selab.janelia.org/pub/software/hmmer3/${MY_PV}/${MY_P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
IUSE="+cpu_flags_x86_sse mpi +threads gsl static-libs utils"
KEYWORDS="amd64 x86 ~amd64-linux ~x86-linux ~ppc-macos"

DEPEND="
	mpi? ( virtual/mpi )
	gsl? ( >=sci-libs/gsl-1.12 )"
RDEPEND="${DEPEND}"

src_prepare() {
	epatch \
		"${FILESDIR}"/${P}-fix_tests.patch \
		"${FILESDIR}"/${P}-perl-5.16-2.patch
}

src_configure() {
	econf \
		$(use_enable cpu_flags_x86_sse sse) \
		$(use_enable mpi) \
		$(use_enable threads) \
		$(use_with gsl)
}

src_install() {
	default

	use static-libs && dolib.a src/libhmmer.a easel/libeasel.a

	insinto /usr/share/${PN}
	doins -r tutorial
	dodoc Userguide.pdf
	use utils && cd easel && default
}
