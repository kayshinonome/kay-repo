# Distributed under the terms of the GNU General Public License v2
EAPI=8
DESCRIPTION="Free assembler/linker package for the Game Boy and Game Boy Color"
HOMEPAGE="https://rgbds.gbdev.io/"
EGIT_REPO_URI="https://github.com/rednex/${PN}.git"
LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""
inherit git-r3
RDEPEND="
	media-libs/libpng:=
"
DEPEND="${RDEPEND}
	virtual/yacc
	sys-devel/flex
	virtual/pkgconfig
"
RESTRICT="mirror"
src_compile() {
	emake Q= || die
}
src_install() {
	emake Q= STRIP= DESTDIR="${ED}" PREFIX=/usr mandir=/usr/share/man install || die
}
