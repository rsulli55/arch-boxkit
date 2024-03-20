FROM quay.io/toolbx-images/archlinux-toolbox:latest

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A custom arch terminal" \
      maintainer="rsulli55"

COPY shell-packages /
COPY dev-packages /
RUN pacman -Syu --needed --noconfirm - < shell-packages
RUN pacman -Syu --needed --noconfirm - < dev-packages
RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
RUN rm /shell-packages
RUN rm /dev-packages

# RUN   ln -fs /bin/sh /usr/bin/sh && \
#       ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/docker && \
#       ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/flatpak && \ 
#       ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/podman && \
#       ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/rpm-ostree && \
#       ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/transactional-update
     
