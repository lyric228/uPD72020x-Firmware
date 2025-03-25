# Maintainer: Jack Chen <redchenjs@live.com>

pkgname=upd72020x-fw
pkgver=1.0.0
pkgrel=2
epoch=1
pkgdesc="Renesas uPD720201 / uPD720202 USB 3.0 chipsets firmware"
arch=('any')
url="https://github.com/xolider/uPD72020x-Firmware"
license=('custom')
source=(
  "uPD72020x-Firmware-$pkgver.tar.gz::https://github.com/xolider/uPD72020x-Firmware/archive/refs/tags/1.0.0.tar.gz"
  "remove.hook"
)
sha512sums=(
  '10a22fda5843ebc801040b29d16820480b1f7b5c6addaf6af782287c8ab9764fe823aad0cc98b133722ed0658d01808dc95d1aa3a123af0be831e7015e13e6fa' 
  '47aa4c4c3a0014df79b7a7998edfbc7b436ae6e966432f3787d9f1655c986591c73165de6fad52ebb5cefd4f8101b9b094d117f0508cd1f8f0d2c7396bbd3f91'
)

package() {
  install -Dm644 "uPD72020x-Firmware-$pkgver/UPDATE.mem" "$pkgdir/usr/lib/firmware/renesas_usb_fw.mem"
  install -Dm644 "uPD72020x-Firmware-$pkgver/License.rtf" "$pkgdir/usr/share/licenses/$pkgname/LICENSE.rtf"

  # firmware install & remove hooks
  install -Dm644 /dev/null "$pkgdir/usr/lib/initcpio/hooks/$pkgname"
  install -Dm644 remove.hook "$pkgdir/usr/share/libalpm/hooks/$pkgname.hook"
}
