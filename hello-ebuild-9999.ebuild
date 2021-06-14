# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Ebuild sample"
HOMEPAGE="https://github.com/arisq/hello-ebuild"
EGIT_REPO_URI="https://gitlab.com/ArisQ/hello-ebuild.git"
EGIT_BRANCH="main"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	git-r3_fetch
	git-r3_checkout
}

src_configure() {
	autoreconf --install
	econf
}

