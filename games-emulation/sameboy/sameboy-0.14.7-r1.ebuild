# Distributed under the terms of the GNU General Public License v2
EAPI=8

DESCRIPTION="SameBoy is an open source Game Boy (DMG) and Game Boy Color (CGB) emulator"

HOMEPAGE="https://sameboy.github.io/"

SRC_URI="https://github.com/LIJI32/${PN}/archive/refs/tags/v${PV}.tar.gz"

LICENSE="MIT"

SLOT="0"

KEYWORDS="~amd64"

IUSE="clang"

inherit toolchain-funcs xdg llvm

RDEPEND="
	media-libs/libsdl2:=
	virtual/opengl
    dev-lang/rgbds"

DEPEND="${RDEPEND}"

RESTRICT="mirror"

S="${WORKDIR}/SameBoy-${PV}"

LLVM_MAX_SLOT=14

llvm_check_deps() {
    if use clang; then
        if ! has_version --host-root "sys-devel/clang:${LLVM_SLOT}"; then
            ewarn "sys-devel/clang:${LLVM_SLOT} is missing! Cannot use LLVM slot ${LLVM_SLOT} ..."
            return 1
        fi
        if ! has_version --host-root "=sys-devel/lld-${LLVM_SLOT}*"; then
            ewarn "=sys-devel/lld-${LLVM_SLOT}* is missing! Cannot use LLVM slot ${LLVM_SLOT} ..."
            return 1
        fi
        einfo "Will use LLVM slot ${LLVM_SLOT}!"
    fi
}

pkg_setup() {
    if use clang && ! tc-is-clang; then
        export CC=${CHOST}-clang
    else
        tc-export CC
    fi
}

src_compile() {
    emake DESTDIR="${ED}" PREFIX=/usr || die
}

src_install() {
    emake DESTDIR="${ED}" PREFIX=/usr mandir=/usr/share/man install || die
}

pkg_postinst() {
    xdg_desktop_database_update
    xdg_icon_cache_update
}
