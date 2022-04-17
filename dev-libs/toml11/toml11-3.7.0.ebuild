# Distributed under the terms of the GNU General Public License v2
EAPI=8

inherit cmake

DESCRIPTION="A C++11 header-only toml parser/encoder depending only on C++ standard library."

HOMEPAGE="https://github.com/ToruNiina/toml11"

SRC_URI="https://github.com/ToruNiina/toml11/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"

SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

RESTRICT="mirror"

S="${WORKDIR}/toml11-${PV}"
