# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
PYTHON_COMPAT=( python3_{7..9} )
DISTUTILS_USE_SETUPTOOLS=no

inherit distutils-r1

# major.minor.0 is tagged as major.minor
SRC_PV="0.13.1"
DESCRIPTION="Weightless is a High Performance Asynchronous Networking Library."
HOMEPAGE="https://github.com/seecr/weightless-core"
SRC_URI="https://github.com/seecr/${PN}/archive/${SRC_PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="mirror"
IUSE="examples"

S="${WORKDIR}/${PN}-${SRC_PV}"

src_prepare() {
	default
	cp "${FILESDIR}/customtest.py" test/.
}

python_test() {
	# customized tests, some others require seecr-test deps
	"${PYTHON}" test/customtest.py || die "Test failed with ${EPYTHON}"
}

src_install(){
	distutils-r1_src_install

	if use examples; then
		docinto examples
		dodoc doc/*
	fi
}
