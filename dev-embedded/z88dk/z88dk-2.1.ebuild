# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A collection of software development tools that targets the 8080 and z80 family of machines. "
HOMEPAGE="https://z88dk.org/site/"
SRC_URI="https://github.com/${PN}/${PN}/releases/download/v${PV}/${PN}-src-${PV}.tgz"
LICENSE="Clarified-Artistic"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}
    app-text/dos2unix 
    dev-libs/boost
    sys-apps/texinfo
    app-text/texi2html
    dev-libs/libxml2
    dev-vcs/subversion
    sys-devel/bison
    sys-devel/flex
    sys-libs/zlib
    sys-devel/m4
    dev-embedded/sdcc
"
src_unpack() {
    default
    mv "${WORKDIR}/${PN}" "${WORKDIR}/${P}"
}

src_compile() {
    ./build.sh || die
}

src_install() {
    make Q= STRIP= DESTDIR="${D}" mandir=/usr/share/man install || die
}
