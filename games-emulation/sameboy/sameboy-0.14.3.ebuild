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

inherit toolchain-funcs
inherit xdg

RDEPEND="
	media-libs/libsdl2:=
	virtual/opengl
"
DEPEND="${RDEPEND}
	dev-lang/rgbds
"

RESTRICT="mirror"

S="${WORKDIR}/SameBoy-${PV}"

src_compile() {
	emake DESTDIR="${D}" PREFIX=/usr CC="$(tc-getCC)" || die
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr mandir=/usr/share/man install || die
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}
