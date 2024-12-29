FROM ghcr.io/ublue-os/bluefin-dx:stable

RUN dnf5 copr enable bieszczaders/kernel-cachyos
RUN dnf5 install kernel-cachyos kernel-cachyos-devel-matched

RUN dnf5 copr enable alternateved/keyd
RUN dnf5 install keyd

RUN dnf5 install ulauncher

## Final command
RUN bootc container lint
