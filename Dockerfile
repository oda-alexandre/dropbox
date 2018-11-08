FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
ca-certificates \
wget

RUN useradd -d /home/dropbox -m dropbox && \
passwd -d dropbox && \
adduser dropbox sudo

USER dropbox

WORKDIR /home/dropbox

RUN wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

RUN sudo apt-get --purge autoremove -y \
wget

EXPOSE 17500

CMD /home/dropbox/.dropbox-dist/dropboxd
