# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
PYTHON_COMPAT=( python3_{7..9} )
DISTUTILS_USE_SETUPTOOLS=bdepend

inherit distutils-r1

DESCRIPTION="Text tokenization and sentence segmentation."
HOMEPAGE="https://github.com/fnl/syntok"
SRC_URI="https://github.com/fnl/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~arm ~arm64 x86"
RESTRICT="mirror"
RDEPEND="dev-python/regex[${PYTHON_USEDEP}]"

distutils_enable_tests pytest
