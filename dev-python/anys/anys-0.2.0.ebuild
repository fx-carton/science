# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..9} )
DISTUTILS_USE_SETUPTOOLS=pyproject.toml
inherit distutils-r1

DESCRIPTION="Matchers for pytest"
HOMEPAGE="https://github.com/jwodder/anys"
SRC_URI="https://github.com/jwodder/anys/releases/download/v${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-python/wheel[${PYTHON_USEDEP}]
"

PATCHES=(
	"${FILESDIR}/${PN}-0.2.0-coverage.patch"
)

distutils_enable_tests pytest
