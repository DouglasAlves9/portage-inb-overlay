# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
MULTILIB_COMPAT=( abi_x86_{32,64} )
inherit meson multilib-minimal ninja-utils
if [[ "${PV}" == "9999" ]]; then
	inherit git-r3
fi

DESCRIPTION="Vulkan-based D3D9 implementation for Linux / Wine , based on dxvk"
HOMEPAGE="https://github.com/Joshua-Ashton/d9vk/"
if [[ "${PV}" == "9999" ]]; then
	EGIT_REPO_URI="https://github.com/Joshua-Ashton/d9vk.git"
else
	MY_PV="${PV//_/-}"
	RESTRICT="primaryuri"
	SRC_URI="https://github.com/Joshua-Ashton/d9vk/archive/${MY_PV}.tar.gz"
	MY_P="${PN}-${MY_PV}"
	S="${WORKDIR}/${MY_P}"
fi

LICENSE="ZLIB"
SLOT="0"
if [[ "${PV}" == "9999" ]]; then
	KEYWORDS=""
else
	KEYWORDS="~amd64 ~x86"
fi
IUSE="video_cards_nvidia"

COMMON_DEPEND="virtual/wine[${MULTILIB_USEDEP}]"
DEPEND="
	!!app-emulation/dxvk
	${COMMON_DEPEND}
	dev-util/vulkan-headers
	dev-util/glslang
"
RDEPEND="
	${COMMON_DEPEND}
	media-libs/vulkan-loader[${MULTILIB_USEDEP}]
	|| (
		>=app-emulation/wine-any-4.5
		>=app-emulation/wine-d3d9-4.5
		>=app-emulation/wine-staging-4.5
		>=app-emulation/wine-vanilla-4.5
	)
	|| (
		video_cards_nvidia? ( >=x11-drivers/nvidia-drivers-418.74 )
		>=media-libs/mesa-19.2
	)
"

src_prepare() {
	default
	sed -i "s|^basedir=.*$|basedir=\"${EPREFIX}\"|" setup_dxvk.sh || die
	sed -i 's|"x64"|"usr/lib64/dxvk"|' setup_dxvk.sh || die
	sed -i 's|"x32"|"usr/lib32/dxvk"|' setup_dxvk.sh || die

	if ! use abi_x86_64; then
		sed -i '|installFile "$win64_sys_path"|d' setup_dxvk.sh
	fi

	if ! use abi_x86_32; then
		sed -i '|installFile "$win32_sys_path"|d' setup_dxvk.sh
	fi
}

multilib_src_configure() {
	local bit="${MULTILIB_ABI_FLAG:8:2}"
	local emesonargs=(
		--libdir=lib${bit}/dxvk
		--bindir=lib${bit}/dxvk/bin
		--cross-file=../${MY_P}/build-wine${bit}.txt
	)
	meson_src_configure
}

multilib_src_compile() {
	EMESON_SOURCE="${S}"
	meson_src_compile
}

multilib_src_install() {
	meson_src_install
}

multilib_src_install_all() {
	dobin setup_dxvk.sh
}

pkg_postinst() {
	elog "dxvk is installed, but not activated. You have to create DLL overrides"
	elog "in order to make use of it. To do so, set WINEPREFIX and execute"
	elog "setup_dxvk.sh install --symlink."
}
