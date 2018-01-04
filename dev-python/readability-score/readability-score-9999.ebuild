# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

PYTHON_COMPAT=( python{2_7,3_{4,5}} )

inherit distutils-r1 git-r3

EGIT_REPO_URI="https://github.com/wimmuskee/readability-score.git"
DESCRIPTION="This Python library can calculate the readability score of a text."
HOMEPAGE="https://github.com/wimmuskee/readability-score"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/nltk
	dev-python/pyphen"
