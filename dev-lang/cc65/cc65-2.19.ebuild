EAPI=8

DESCRIPTION="Free assembler/linker package for the Game Boy and Game Boy Color"
HOMEPAGE="https://rgbds.gbdev.io/"
SRC_URI="https://github.com/cc65/cc65/archive/V${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="ZLIB"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

RESTRICT="mirror"

S="${WORKDIR}/${P}"

src_compile() {
	emake Q= || die
}

src_install() {
	emake Q= STRIP= DESTDIR="${D}" PREFIX=/usr mandir=/usr/share/man install || die
}
