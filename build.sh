#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
rpm-ostree install \
	screen \
	distrobox \
        dbus-daemon \
	java-25-openjdk

#git clone https://github.com/telekom/ki-in-schulen.git /usr/share/ki-in-schulen
#sed -i 's,/usr/local/share/ki-in-schulen/,/usr/share/ki-in-schulen/,' /usr/share/ki-in-schulen/Calliope-Rennspiel/Python/ki-gui-lin.py
#
#pip install --prefix /usr --no-user 'pynput==1.7.6' # 'orange3>=3.34.1'

# this would install a package from rpmfusion
# rpm-ostree install vlc

#### Example for enabling a System Unit File

systemctl enable podman.socket
systemctl enable dasi-repocheck.timer
systemctl enable dasi-update.timer
systemctl enable dasi-reset-users.service
