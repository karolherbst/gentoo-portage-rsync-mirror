# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/fpconst/fpconst-0.7.3-r1.ebuild,v 1.16 2015/04/08 08:04:56 mgorny Exp $

EAPI=5

PYTHON_COMPAT=( python2_7 pypy )

inherit distutils-r1

DESCRIPTION="Python Module for handling IEEE 754 floating point special values"
HOMEPAGE="http://chaco.bst.rochester.edu:8080/statcomp/projects/RStatServer/fpconst/ http://pypi.python.org/pypi/fpconst http://sourceforge.net/projects/rsoap/files/"
SRC_URI="mirror://sourceforge/rsoap/${P}.tar.gz"

KEYWORDS="alpha amd64 arm hppa ia64 ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos"
SLOT="0"
LICENSE="GPL-2"
IUSE=""

DEPEND=""
RDEPEND=""

DOCS=( CHANGELOG README pep-0754.txt )

python_test() {
	"${PYTHON}" -m fpconst || die "Self-tests fail with ${EPYTHON}"
}
