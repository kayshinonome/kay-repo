# Distributed under the terms of the GNU General Public License v2
EAPI=8

DESCRIPTION="A freeware C compiler for 6502 based systems "

HOMEPAGE="https://cc65.github.io/"

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
	emake DESTDIR="${ED}" PREFIX=/usr || die
}

src_install() {
	emake DESTDIR="${ED}" PREFIX=/usr mandir=/usr/share/man install || die
}
