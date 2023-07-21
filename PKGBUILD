# Maintainers: shivanandvp <shivanandvp@rebornos.org>, SoulHarsh007 <harsh.peshwani@outlook.com>

pkgname=rebornos-ukui-skel
pkgdesc="Skeleton for /home used for theming UKUI"
pkgver=0.1.1
pkgrel=1
arch=('any')
url="https://gitlab.com/rebornos-team/rebornos-packages/ukui-packages/rebornos-ukui-skel"
depends=('ukui-themes' 'fluent-gtk-theme' 'mate-settings-daemon')
license=('GPL3')
source=('user'
    'calla-alt.png'
    'mate-settings-daemon-ukui.desktop')

sha256sums=('ffc149711626fc423b075952a21a7a92ef17aac91121ebd3977b64b628d1b839'
    '26fc5b5461f37132d913c9b03a48392e59a58f66e665cc5dfc2d997bda4190d4'
    '2762092eeb380f10953a25dcd6d10eea1a3b655625aac6f3dd050da830c5200e')

package() {
    install -D -m644 "${srcdir}/user" "${pkgdir}/etc/skel/.config/dconf/user"
    install -D -m644 "${srcdir}/calla-alt.png" "${pkgdir}/usr/share/backgrounds/calla-alt.png"
    # Required to apply the MATE theme. Also otherwise did not autostart in UKUI because of the OnlyShowIn setting in the .desktop file
    install -D -m644 "${srcdir}/mate-settings-daemon-ukui.desktop" "${pkgdir}/etc/xdg/autostart/mate-settings-daemon-ukui.desktop"
}
