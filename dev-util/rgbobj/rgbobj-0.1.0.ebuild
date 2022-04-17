# Distributed under the terms of the GNU General Public License v2
EAPI=8

DESCRIPTION="A Rust program that allows examining RGBDS object files in a human-friendly manner."

HOMEPAGE="https://github.com/gbdev/rgbobj"

CRATES="
	atty-0.2.14
	autocfg-1.1.0
	bitflags-1.3.2
	clap-3.1.9
	clap_lex-0.1.1
	hashbrown-0.11.2
	hermit-abi-0.1.19
	indexmap-1.8.1
	libc-0.2.123
	os_str_bytes-6.0.0
	rgbds-obj-0.1.0
	strsim-0.10.0
	termcolor-1.1.3
	terminal_size-0.1.17
	textwrap-0.15.0
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

SRC_URI="https://github.com/gbdev/rgbobj/archive/v${PV}.tar.gz -> ${P}.tar.gz
    $(cargo_crate_uris)"

LICENSE="Apache-2.0 MIT Unlicense"

SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

RESTRICT="mirror"

S="${WORKDIR}/rgbobj-${PV}"
