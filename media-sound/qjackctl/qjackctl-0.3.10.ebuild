# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-sound/qjackctl/qjackctl-0.3.10.ebuild,v 1.3 2014/08/10 21:10:31 slyfox Exp $

EAPI=4

inherit qt4-r2

DESCRIPTION="A Qt application to control the JACK Audio Connection Kit and ALSA sequencer connections"
HOMEPAGE="http://qjackctl.sourceforge.net/"
SRC_URI="mirror://sourceforge/qjackctl/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~x86"

IUSE="alsa dbus debug portaudio"

RDEPEND="
	>=media-sound/jack-audio-connection-kit-0.109.2
	dev-qt/qtcore:4
	dev-qt/qtgui:4
	alsa? ( media-libs/alsa-lib )
	dbus? ( dev-qt/qtdbus:4 )
	portaudio? ( media-libs/portaudio )"
DEPEND="${RDEPEND}"

DOCS="AUTHORS ChangeLog README TODO TRANSLATORS"

PATCHES=( "${FILESDIR}/${PN}-0.3.9-gcc47.patch" )

src_configure() {
	econf \
		$(use_enable alsa alsa-seq) \
		$(use_enable dbus) \
		$(use_enable debug) \
		$(use_enable portaudio)

	# Emulate what the Makefile does, so that we can get the correct
	# compiler used.
	eqmake4 ${PN}.pro -o ${PN}.mak
}

src_compile() {
	emake -f ${PN}.mak
	lupdate ${PN}.pro || die "lupdate failed"
}
