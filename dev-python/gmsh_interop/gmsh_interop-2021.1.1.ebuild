# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="Interoperability with Gmsh for Python"
HOMEPAGE="https://github.com/inducer/gmsh_interop/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/numpy-1.6.0[${PYTHON_USEDEP}]
	dev-python/pytools[${PYTHON_USEDEP}]
	sci-libs/gmsh[blas]
"
BDEPEND="
	test? (
		dev-python/joblib[${PYTHON_USEDEP}]
	)
"
distutils_enable_tests pytest
