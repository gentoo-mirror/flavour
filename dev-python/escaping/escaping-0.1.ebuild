# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"
#PYTHON_DEPEND="2:2.6"
PYTHON_DEPEND="2:2.6:2.6 3:3.1:3.1"

SUPPORT_PYTHON_ABIS="1"

inherit distutils

DESCRIPTION="A collection of functions for escaping filenames etc."
HOMEPAGE="http://www.meresco.org"
SRC_URI="http://sources.meresco.org/opensourcepackages/${P}-src.tar.gz"
LICENSE="GPL-2"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"
DEPEND=""
RDEPEND="${DEPEND}"