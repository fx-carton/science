# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( pypy3 python3_{8..10} )

inherit distutils-r1

MY_PN="keyrings.alt"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Alternate keyring backend implementations used with dev-python/keyring"
HOMEPAGE="https://github.com/jaraco/keyrings.alt/"
SRC_URI="mirror://pypi/${MY_P:0:1}/${MY_PN}/${MY_P}.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~x86"

DEPEND=""

S="${WORKDIR}/${MY_P}"

# Patch sumbitted upstream:
# https://github.com/jaraco/keyrings.alt/pull/46
PATCHES=( "${FILESDIR}/${P}-pycryptodome.patch" )

distutils_enable_tests pytest
distutils_enable_sphinx docs
