#!/bin/bash
URL="http://rpms.if-not-true-then-false.com/fedora23-old-xorg/"
ARCH=$(uname -m)
PACKAGES=( \
	'xorg-x11-drv-ati-7.6.0-0.1.20150709git95f5d09.fc23' \
	'xorg-x11-drv-evdev-2.9.2-2.fc23' \
	'xorg-x11-drv-fbdev-0.4.3-22.fc23' \
	'xorg-x11-drv-intel-2.99.917-15.20150729.fc23' \
	'xorg-x11-drv-libinput-0.14.0-1.fc23' \
	'xorg-x11-drv-openchrome-0.3.3-16.fc23' \
	'xorg-x11-drv-nouveau-1.0.11-4.fc23' \
	'xorg-x11-drv-qxl-0.1.4-3.fc23' \
	'xorg-x11-drv-synaptics-1.8.2-3.fc23' \
	'xorg-x11-drv-vesa-2.3.2-22.fc23' \
	'xorg-x11-drv-vmmouse-13.1.0-1.fc23' \
	'xorg-x11-drv-vmware-13.0.2-9.20150211git8f0cf7c.fc23' \
	'xorg-x11-drv-wacom-0.30.0-2.fc23' \
	'xorg-x11-server-Xorg-1.17.2-2.fc23' \
	'xorg-x11-server-Xwayland-1.17.2-2.fc23' \
	'xorg-x11-server-common-1.17.2-2.fc23' \
)
printf "$URL%s.$ARCH.rpm " "${PACKAGES[@]}" |xargs dnf install -y

