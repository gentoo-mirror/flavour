# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
PYTHON_COMPAT=( python{2_7,3_{5,6}} )

inherit distutils-r1

DESCRIPTION="URL normalization for Python"
HOMEPAGE="https://github.com/niksite/url-normalize"
SRC_URI="https://github.com/niksite/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="PYTHON"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="mirror"
IUSE=""
DEPEND=""
RDEPEND="
	dev-python/six"

src_prepare() {
	default
	cp "${FILESDIR}/setup.py" setup.py
}