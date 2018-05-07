# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

MULTILIB_COMPAT=( abi_x86_64 )

inherit pax-utils rpm multilib-build xdg-utils gnome2-utils

DESCRIPTION="P2P Internet Telephony (VoiceIP) client"
HOMEPAGE="https://www.skype.com/"
SRC_URI="https://repo.skype.com/rpm/unstable/${PN}_${PV}-1.x86_64.rpm"

LICENSE="Skype-TOS no-source-code"
SLOT="0"
KEYWORDS="~amd64"
IUSE="pax_kernel"

S="${WORKDIR}"
QA_PREBUILT=opt/${PN}/${PN}
RESTRICT="mirror bindist strip" #299368

RDEPEND="
	app-crypt/libsecret[${MULTILIB_USEDEP}]
	dev-libs/atk[${MULTILIB_USEDEP}]
	dev-libs/expat[${MULTILIB_USEDEP}]
	dev-libs/glib:2[${MULTILIB_USEDEP}]
	dev-libs/nspr[${MULTILIB_USEDEP}]
	dev-libs/nss[${MULTILIB_USEDEP}]
	gnome-base/gconf:2[${MULTILIB_USEDEP}]
	media-libs/alsa-lib[${MULTILIB_USEDEP}]
	media-libs/fontconfig:1.0[${MULTILIB_USEDEP}]
	media-libs/freetype:2[${MULTILIB_USEDEP}]
	media-libs/libv4l[${MULTILIB_USEDEP}]
	net-print/cups[${MULTILIB_USEDEP}]
	sys-apps/dbus[${MULTILIB_USEDEP}]
	sys-devel/gcc[cxx]
	sys-libs/glibc
	virtual/ttf-fonts
	x11-libs/cairo[${MULTILIB_USEDEP}]
	x11-libs/gdk-pixbuf:2[${MULTILIB_USEDEP}]
	x11-libs/gtk+:2[${MULTILIB_USEDEP}]
	x11-libs/libX11[${MULTILIB_USEDEP}]
	x11-libs/libXScrnSaver[${MULTILIB_USEDEP}]
	x11-libs/libXcomposite[${MULTILIB_USEDEP}]
	x11-libs/libXcursor[${MULTILIB_USEDEP}]
	x11-libs/libXdamage[${MULTILIB_USEDEP}]
	x11-libs/libXext[${MULTILIB_USEDEP}]
	x11-libs/libXfixes[${MULTILIB_USEDEP}]
	x11-libs/libXi[${MULTILIB_USEDEP}]
	x11-libs/libXrandr[${MULTILIB_USEDEP}]
	x11-libs/libXrender[${MULTILIB_USEDEP}]
	x11-libs/libXtst[${MULTILIB_USEDEP}]
	x11-libs/libxcb[${MULTILIB_USEDEP}]
	x11-libs/libxkbfile[${MULTILIB_USEDEP}]
	x11-libs/pango[${MULTILIB_USEDEP}]
"

src_unpack() {
	rpm_src_unpack ${A}
}

src_prepare() {
	default
	sed -e "s!^SKYPE_PATH=.*!SKYPE_PATH=${EPREFIX}/opt/${PN}/${PN}!" \
		-i usr/bin/${PN} || die
	sed -e "s!^Exec=.*!Exec=${EPREFIX}/opt/bin/${PN}!" \
		-e "s!^Categories=.*!Categories=Network;InstantMessaging;Telephony;!" \
		-e "/^OnlyShowIn=/d" \
		-i usr/share/applications/${PN}.desktop || die
}

src_install() {
	dodir /opt
	cp -a usr/share/${PN} "${D}"/opt || die

	#insinto /opt/${PN}/locales
	#doins usr/share/${PN}/locales/*.pak
	#
	#insinto /opt/${PN}
	#doins -r usr/share/${PN}/resources
	#
	#insinto /opt/${PN}/resources
	#doins usr/share/${PN}/resources/*.asar

	#insinto /opt/${PN}
	#doins usr/share/${PN}/*.pak
	#doins usr/share/${PN}/*.bin
	#doins usr/share/${PN}/*.dat
	#doins usr/share/${PN}/*.html
	#doins usr/share/${PN}/version
	#exeinto /opt/${PN}
	#doexe usr/share/${PN}/*.so
	#doexe usr/share/${PN}/${PN}

	into /opt
	dobin usr/bin/${PN}

	dodoc usr/share/${PN}/*.html
	dodoc -r usr/share/doc/${PN}/.
	# symlink required for the "Help->3rd Party Notes" menu entry  (otherwise frozen skype -> xdg-open)
	dosym ${P} usr/share/doc/${PN}

	doicon usr/share/pixmaps/${PN}.png
	
	# compat symlink for the autostart desktop file
	dosym ../../opt/bin/${PN} usr/bin/${PN}
	
	local res
	for res in 16 32 256 512 ; do
		newicon -s ${res} usr/share/icons/hicolor/${res}x${res}/apps/${PN}.png ${PN}.png
	done

	domenu usr/share/applications/${PN}.desktop

	if use pax_kernel; then
		pax-mark -Cm "${ED%/}"/opt/${PN}/${PN}
		pax-mark -m "${ED%/}"/opt/${PN}/resources/app.asar.unpacked/node_modules/slimcore/bin/slimcore.node
		eqawarn "You have set USE=pax_kernel meaning that you intend to run"
		eqawarn "${PN} under a PaX enabled kernel. To do so, we must modify"
		eqawarn "the ${PN} binary itself and this *may* lead to breakage! If"
		eqawarn "you suspect that ${PN} is being broken by this modification,"
		eqawarn "please open a bug."
	fi
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
	gnome2_icon_cache_update
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_mimeinfo_database_update
	gnome2_icon_cache_update
}