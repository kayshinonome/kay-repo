# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Free assembler/linker package for the Game Boy and Game Boy Color"
HOMEPAGE="https://rgbds.gbdev.io/"
SRC_URI="https://github.com/rednex/rgbds/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"

SLOT="0"

# Same as 3.10, but with a bug
KEYWORDS="#amd64  "
IUSE=""

RDEPEND="
	media-libs/libpng:=
"
DEPEND="${RDEPEND}
	virtual/yacc
	sys-devel/flex
	virtual/pkgconfig
"

RESTRICT="mirror"

S="${WORKDIR}/rgbds-${PV}"

src_compile() {
	emake Q= || die
}

src_install() {
	emake Q= STRIP= DESTDIR="${D}" PREFIX=/usr mandir=/usr/share/man install || die
}
