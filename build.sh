#!/bin/bash

set -ouex pipefail

# Install keyd
dnf5 copr enable alternateved/keyd
dnf5 install -y keyd

# Install ulauncher
dnf5 install -y ulauncher
