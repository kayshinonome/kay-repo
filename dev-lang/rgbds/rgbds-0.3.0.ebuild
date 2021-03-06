# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Free assembler/linker package for the Game Boy and Game Boy Color"

HOMEPAGE="https://rgbds.gbdev.io/"

SRC_URI="https://github.com/rednex/rgbds/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"

SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE=""

RDEPEND="
	media-libs/libpng:=
"

DEPEND="${RDEPEND}
	virtual/yacc
	sys-devel/flex
	virtual/pkgconfig"

RESTRICT="mirror"

S="${WORKDIR}/rgbds-${PV}"

src_compile() {
	emake Q= || die
}

src_install() {
	emake Q= STRIP= DESTDIR="${ED}" PREFIX=/usr mandir=/usr/share/man install || die
}
