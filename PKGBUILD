# Maintainers: shivanandvp <shivanandvp@rebornos.org>

pkgname=rebornos-ukui-skel
pkgdesc="Skeleton for /home used for theming UKUI"
pkgver=0.0.1
pkgrel=1
arch=('any')
url="https://gitlab.com/rebornos-team/rebornos-packages/ukui-packages/rebornos-ukui-skel"
depends=('ukui-themes' 'fluent-gtk-theme')
license=('GPL3')
source=()

sha256sums=('ffc149711626fc423b075952a21a7a92ef17aac91121ebd3977b64b628d1b839'
            '26fc5b5461f37132d913c9b03a48392e59a58f66e665cc5dfc2d997bda4190d4')

package() {
    install -D -m644 "dconf/user" "${pkgdir}/etc/skel/.config/dconf/user"
    install -D -m644 "calla-alt.png" "${pkgdir}/usr/share/backgrounds/calla-alt.png"
}
