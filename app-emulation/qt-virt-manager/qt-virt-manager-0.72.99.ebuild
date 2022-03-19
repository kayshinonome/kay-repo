# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A GUI application for managing virtual machines."
HOMEPAGE="http://f1ash.github.io/qt-virt-manager"
SRC_URI="https://github.com/F1ash/${PN}/archive/refs/tags/${PV}.tar.gz"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~amd64"

inherit cmake
inherit xdg

IUSE="
	spice
	smartcard
	vnc
	lxc
	kde
"

RDEPEND="
	spice? ( app-emulation/spice )
	smartcard? ( app-emulation/spice[smartcard] app-emulation/libcacard )
	vnc? ( net-libs/libvncserver )
	lxc? ( app-emulation/lxc )
	kde? ( kde-apps/krdc )
	dev-qt/qtmultimedia
	dev-qt/qtsvg
	dev-qt/qtwidgets
	dev-qt/qtxml
	dev-qt/qtnetwork
	x11-libs/qtermwidget
	dev-libs/glib
	app-emulation/libvirt
"

DEPEND="${RDEPEND}"

RESTRICT="mirror"

src_prepare() {
	cmake_src_prepare
}

src_configure() {

	local support_spice=1
	local support_libcacard=1
	local support_vnc=1
	local support_lxc=1

	[[ $(usex spice) == "no" ]] && support_spice=0
	[[ $(usex smartcard) == "no" ]] && support_libcacard=0
	[[ $(usex vnc) == "no" ]] && support_vnc=0
	[[ $(usex lxc) == "no" ]] && support_lxc=0

	local mycmakeargs=(
		-DBUILD_QT_VERSION=5
		-DWITH_SPICE_SUPPORT=$support_spice
		-DWITH_VNC_SUPPORT=$support_vnc
		-DWITH_LXC_SUPPORT=$support_lxc
		-DWITH_LIBCACARD=$support_libcacard
	)

	cmake_src_configure
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}
