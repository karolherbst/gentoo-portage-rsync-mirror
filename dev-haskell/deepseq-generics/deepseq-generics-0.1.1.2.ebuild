# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/deepseq-generics/deepseq-generics-0.1.1.2.ebuild,v 1.2 2015/04/02 10:50:42 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="GHC.Generics-based Control.DeepSeq.rnf implementation"
HOMEPAGE="https://github.com/hvr/deepseq-generics"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/hunit
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"

src_prepare() {
	cabal_chdeps \
		'ghc-prim >= 0.2 && < 0.4' 'ghc-prim >= 0.2 && < 0.5'
}
