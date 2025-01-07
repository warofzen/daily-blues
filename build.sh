#!/bin/bash

set -ouex pipefail

# Install keyd
dnf copr enable alternateved/keyd
dnf install keyd -y

# Install ulauncher
dnf install -y ulauncher
