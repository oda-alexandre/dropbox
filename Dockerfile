FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
ca-certificates \
python \
wget

RUN useradd -d /home/dropbox -m dropbox && \
passwd -d dropbox && \
adduser dropbox sudo

RUN wget https://www.dropbox.com/download?dl=packages/dropbox.py -O /usr/local/bin/dropbox-cli && \
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf - && \
chmod +x /usr/local/bin/dropbox-cli && \
chown dropbox:dropbox /usr/local/bin/dropbox-cli && \
chown dropbox:dropbox -R /root/

RUN apt-get --purge autoremove -y

USER dropbox

EXPOSE 17500

CMD .dropbox-dist/dropboxd
