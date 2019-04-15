# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="A Python library implementing common phonetic algorithms quickly."
HOMEPAGE="https://github.com/yougov/fuzzy"
SRC_URI="https://pypi.io/packages/source/${PN:0:1}/${PN}/${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="mirror"
DEPEND="dev-python/cython[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND=""

python_test() {
	"${PYTHON}" -m unittest discover -s test || die "Test failed with ${EPYTHON}"
}
