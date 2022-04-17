# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit flag-o-matic llvm systemd toolchain-funcs

HOMEPAGE="https://www.zerotier.com/"

DESCRIPTION="A software-based managed Ethernet switch for planet Earth"

SRC_URI="https://github.com/zerotier/ZeroTierOne/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSL-1.1"

SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE="clang +upnp"

S="${WORKDIR}/ZeroTierOne-${PV}"

RDEPEND="
	dev-libs/json-glib
	net-libs/libnatpmp
	net-libs/http-parser:=
	upnp? ( =net-libs/miniupnpc-2*:= )"

DEPEND="${RDEPEND}
	clang? ( >=sys-devel/clang-6:* )"

PATCHES=(
	"${FILESDIR}/0001-force-dynamic-miniupnpc-linkage.patch"
	"${FILESDIR}/0002-force-dynamic-natpmp-linkage.patch"
	"${FILESDIR}/0003-force-dynamic-http-parser-linkage.patch"
	"${FILESDIR}/0004-disable-sso.patch"
	"${FILESDIR}/0005-respect-ld-flags.patch"
)

DOCS=(README.md AUTHORS.md)

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
		export CXX=${CHOST}-clang++
	else
		tc-export CXX CC
	fi

	if use upnp; then
		export ZT_USE_MINIUPNPC=1
	fi

	ewarn "Disabling One Sign in for zerotier due to toolchain issues"
}

src_compile() {

	append-ldflags -Wl,-z,noexecstack
	emake CXX="${CXX}" STRIP=: one
}

src_test() {
	emake selftest
	./zerotier-selftest || die
}

src_install() {
	default

	# remove pre-zipped man pages
	rm "${ED}"/usr/share/man/{man1,man8}/* || die
	newinitd "${FILESDIR}/${PN}".init-r1 "${PN}"
	systemd_dounit "${FILESDIR}/${PN}".service
	doman doc/zerotier-{cli.1,idtool.1,one.8}
}
