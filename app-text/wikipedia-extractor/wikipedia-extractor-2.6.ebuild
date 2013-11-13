# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils git-2

DESCRIPTION="Extracts and cleans text from Wikipedia database dump."
HOMEPAGE="http://medialab.di.unipi.it/wiki/Wikipedia_Extractor"
EGIT_REPO_URI="git://github.com/bwbaugh/wikipedia-extractor.git"
EGIT_COMMIT="52d5760beeebca7aafc97562c439801580f87a2c"
SLOT="0"
KEYWORDS="~amd64"
LICENSE="GPL-3"
DEPEND=""
RDEPEND="${DEPEND}
	=dev-lang/python-2*"


src_prepare() {
	epatch "${FILESDIR}/${PN}-shebang.patch"
}

src_install() {
	newbin WikiExtractor.py WikiExtractor
}
