#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Install keyd
wget https://copr.fedorainfracloud.org/coprs/alternateved/keyd/repo/fedora-"$RELEASE"/alternateved-keyd-fedora-"$RELEASE".repo -O /etc/yum.repos.d/_copr:alternateved:keyd.repo
rpm-ostree install keyd

# Install ulauncher
rpm-ostree install ulauncher
