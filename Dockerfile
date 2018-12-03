FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
ca-certificates \
wget

RUN wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

RUN apt-get --purge autoremove -y \
wget

RUN useradd -d /home/dropbox -m dropbox && \
passwd -d dropbox && \
adduser dropbox sudo

USER dropbox

RUN sudo apt-get --purge autoremove -y \
wget && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

EXPOSE 17500

CMD .dropbox-dist/dropboxd
