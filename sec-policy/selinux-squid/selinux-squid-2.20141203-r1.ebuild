# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-squid/selinux-squid-2.20141203-r1.ebuild,v 1.2 2014/12/21 14:07:10 swift Exp $
EAPI="5"

IUSE=""
MODS="squid"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for squid"

if [[ $PV == 9999* ]] ; then
	KEYWORDS=""
else
	KEYWORDS="amd64 x86"
fi
DEPEND="${DEPEND}
	sec-policy/selinux-apache
"
RDEPEND="${RDEPEND}
	sec-policy/selinux-apache
"
