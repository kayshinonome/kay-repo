# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="SameBoy is an open source Game Boy (DMG) and Game Boy Color (CGB) emulator"
HOMEPAGE="https://sameboy.github.io/"
SRC_URI="https://github.com/LIJI32/${PN}/archive/refs/tags/v${PV}.tar.gz"
LICENSE="MIT"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	media-libs/libsdl2:=
"
DEPEND="${RDEPEND}
	dev-lang/rgbds
"
src_unpack() {
	default
	mv "${WORKDIR}/SameBoy-${PV}" "${WORKDIR}/${P}"
}

src_compile() {
	emake Q= || die
}

src_install() {
	emake Q= STRIP= DESTDIR="${D}" PREFIX=/usr mandir=/usr/share/man install || die
}
