# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="Astropy affiliated package for reducing optical/IR CCD data"
HOMEPAGE="https://github.com/astropy/ccdproc"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

#TODO: Package all these pytest deps:
# 	pytest-doctestplus>=0.2.0
# 	pytest-remotedata>=0.3.1
# 	pytest-openfiles>=0.3.1
# 	pytest-astropy-header>=0.1.2
# 	pytest-arraydiff>=0.1
# 	pytest-filter-subpackage>=0.1
RESTRICT="test"

BDEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"

RDEPEND="
	>=dev-python/astropy-4.0.6[${PYTHON_USEDEP}]
	>=dev-python/astroscrappy-1.0.8[${PYTHON_USEDEP}]
	>=dev-python/reproject-0.7[${PYTHON_USEDEP}]
	sci-libs/scikit-image[${PYTHON_USEDEP}]
	dev-python/scipy[${PYTHON_USEDEP}]
"

distutils_enable_sphinx docs dev-python/sphinx-astropy dev-python/matplotlib dev-python/pytest-doctestplus
distutils_enable_tests pytest
