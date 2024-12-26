#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Install [keyd](https://github.com/rvaiya/keyd)
wget https://copr.fedorainfracloud.org/coprs/alternateved/keyd/repo/fedora-"$RELEASE"/alternateved-keyd-fedora-"$RELEASE".repo -O /etc/yum.repos.d/_copr:alternateved:keyd.repo
rpm-ostree install keyd
