#!/usr/bin/env bash

set -exuo pipefail

# get rpm housing repofile (why is it in an rpm???)
wget "https://repo.protonvpn.com/fedora-$(cat /etc/fedora-release | cut -d' ' -f 3)-stable/protonvpn-stable-release/protonvpn-stable-release-1.0.3-1.noarch.rpm"

# install rpm housing repofile and refresh repos
dnf install -y ./protonvpn-stable-release-1.0.3-1.noarch.rpm

# install updates
dnf update -y --refresh

# install proton vpn
dnf install -y proton-vpn-gnome-desktop
