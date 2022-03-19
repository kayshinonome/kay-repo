# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A tool to help you make controlx compatible images for the TI-nspire"
HOMEPAGE="https://github.com/kayshinonome/controlxlinux"
SRC_URI="https://github.com/kayshinonome/controlxlinux/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"

SLOT="0"
KEYWORDS="~amd64"

inherit cmake

IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

RESTRICT="mirror"

S="${WORKDIR}/controlxlinux-${PV}"

src_prepare() {
	cmake_src_prepare
}
