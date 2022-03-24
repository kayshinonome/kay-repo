# Distributed under the terms of the GNU General Public License v2
EAPI=8
DESCRIPTION="SameBoy is an open source Game Boy (DMG) and Game Boy Color (CGB) emulator"
HOMEPAGE="https://sameboy.github.io/"
EGIT_REPO_URI="https://github.com/LIJI32/${PN}.git"
LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""
inherit toolchain-funcs
inherit xdg
inherit git-r3
RDEPEND="
	media-libs/libsdl2:=
	virtual/opengl
"
DEPEND="${RDEPEND}
	dev-lang/rgbds
"
RESTRICT="mirror"
src_compile() {
	emake DESTDIR="${ED}" PREFIX=/usr CC="$(tc-getCC)" || die
}
src_install() {
	emake DESTDIR="${ED}" PREFIX=/usr mandir=/usr/share/man install || die
}
pkg_postinst() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}
