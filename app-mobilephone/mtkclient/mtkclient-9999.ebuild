# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(python3_{7,8,9,10})

inherit distutils-r1 

DESCRIPTION="Mediatek reverse engineering and flashing tools"
HOMEPAGE="https://github.com/bkerler/mtkclient"
EGIT_REPO_URI="https://github.com/bkerler/mtkclient.git"
LICENSE="MIT"

inherit git-r3

SLOT="0"
KEYWORDS="#amd64"
IUSE="
	capstone
    keystone
"
RDEPEND="
dev-libs/libusb
dev-python/pip
dev-python/wheel
dev-python/pyusb
dev-python/docopt
dev-python/pycryptodome
dev-python/colorama

capstone? ( dev-libs/capstone[python] )
keystone? ( dev-libs/keystone[python] )
"

DEPEND=""

RESTRICT="mirror"
