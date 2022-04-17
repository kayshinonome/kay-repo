# Distributed under the terms of the GNU General Public License v2
EAPI=8

inherit cmake

DESCRIPTION="An open source HTML Renderer library."

HOMEPAGE="http://lexbor.com/"

SRC_URI="https://github.com/lexbor/lexbor/archive/v${PV}.tar.gz -> ${P}.tar.gz"

KEYWORDS="~amd64 ~x86"

IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

PATCHES=(
    "${FILESDIR}/0001-fix-lxb_css_stylesheet_create-casting-error.patch"
)

LICENSE="Apache-2.0"

SLOT="0"

RESTRICT="mirror"

S="${WORKDIR}/lexbor-${PV}"
