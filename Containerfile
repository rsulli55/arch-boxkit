# FROM quay.io/toolbx-images/archlinux-toolbox:latest
FROM ghcr.io/ublue-os/arch-distrobox:latest

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A custom arch terminal" \
      maintainer="rsulli55"

COPY extra-packages /
RUN pacman -Syu --needed --noconfirm - < extra-packages
RUN rm /extra-packages

# RUN   ln -fs /bin/sh /usr/bin/sh && \
#       ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/docker && \
#       ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/flatpak && \ 
#       ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/podman && \
#       ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/rpm-ostree && \
#       ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/transactional-update
     
