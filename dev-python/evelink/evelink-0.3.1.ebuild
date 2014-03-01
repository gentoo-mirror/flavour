# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

PYTHON_COMPAT=( python{2_5,2_6,2_7} )

inherit distutils-r1 eutils

DESCRIPTION="Python bindings for the EVE API."
HOMEPAGE="https://github.com/eve-val/evelink"
SRC_URI="https://github.com/eve-val/${PN}/archive/${PV}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror"
IUSE=""
DEPEND=""
RDEPEND=">=dev-python/requests-1.1.0
	>=dev-python/argparse-1.2.1"

# not including test functionality
# for this, the following are required:
# mock, nose, unittest2

src_prepare() {
	epatch "${FILESDIR}/${PN}-setup.patch"
}
