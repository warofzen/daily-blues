#!/bin/bash

set -ouex pipefail

# Install keyd
dnf5 copr enable -y alternateved/keyd
dnf5 install -y keyd

# Install ulauncher
dnf5 install -y ulauncher

# Install ghostty
dnf5 copr enable -y pgdev/ghostty
dnf5 install -y ghostty
