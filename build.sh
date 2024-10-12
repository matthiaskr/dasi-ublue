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
	python3-devel python3-tkinter gcc g++ kernel-headers xorg-x11-proto-devel unzip python3-pip \
	python3-pyserial python3-pygame python3-scikit-learn python3-pandas python3-wheel \
	git

cd /usr/share && \
	git clone https://github.com/telekom/ki-in-schulen.git

pip install --root /usr/lib --no-user 'pynput>=1.7.6' 'orange3>=3.34.1'

# this would install a package from rpmfusion
# rpm-ostree install vlc

#### Example for enabling a System Unit File

systemctl enable podman.socket
systemctl enable dasi-repocheck.timer
systemctl enable dasi-flatpak-install.timer
