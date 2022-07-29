# Maintainers: Panda <panda@rebornos.org>, shivanandvp <shivanandvp@rebornos.org>

pkgname=rebornos-mate-skel
pkgdesc="Skeleton for /home used for theming mate"
pkgver=1.1.0
pkgrel=1
arch=('any')
url="https://gitlab.com/rebornos-team/rebornos-packages/mate-packages/rebornos-mate-skel"
depends=('mint-themes' 'mint-y-icons' 'ttf-fira-mono')
license=('GPL3')
source=()

sha256sums=('0969010325d500f785e58dccc44c0edd1eb8bcaa7b30c026556ed6289dede191'
            'dab16e6a8198a71afb784205f289120ad9416e886ef7aed68ddcbfbcd01ad819')

package() {
    install -D -m644 "dconf/user" "${pkgdir}/etc/skel/.config/dconf/user"
    install -D -m644 "blinds-alt.jpg" "${pkgdir}/usr/share/backgrounds/mate/nature/blinds-alt.jpg"
}
