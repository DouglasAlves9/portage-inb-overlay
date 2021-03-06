# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-tex/dot2tex/dot2tex-2.8.7-r1.ebuild,v 1.1 2013/02/04 14:04:33 mgorny Exp $

EAPI=5

PYTHON_COMPAT=( python{2_5,2_6,2_7} pypy{1_9,2_0} )

inherit distutils-r1

DESCRIPTION="A Graphviz to LaTeX converter"
HOMEPAGE="http://code.google.com/p/dot2tex/"
SRC_URI="https://github.com/kjellmf/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd ~amd64-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris"
IUSE="doc examples"

DEPEND=""
RDEPEND=">=dev-python/pyparsing-2.0
	media-gfx/pydot[${PYTHON_USEDEP}]
	media-gfx/graphviz"

python_install_all() {
	distutils-r1_python_install_all

	if use doc; then
		dohtml -r doc/*
		dodoc doc/usage.{txt,pdf}
	fi
	if use examples; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}/examples
	fi
}
