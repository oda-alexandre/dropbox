# IMAGE TO USE
FROM debian:stretch-slim

# MAINTAINER
MAINTAINER https://www.oda-alexandre.com/

# VARIABLES
ENV USER dropbox
ENV PORTS 17500
ENV DEBIAN_FRONTEND noninteractive

# INSTALL PACKAGES
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
ca-certificates \
python \
wget && \

# ADD USER
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECT USER
USER ${USER}

# SELECT WORKING SPACE
WORKDIR /home/${USER}

# INSTALL APP
RUN sudo wget https://www.dropbox.com/download?dl=packages/dropbox.py -O /usr/local/bin/dropbox-cli && \
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf - && \

# CLEANING
sudo apt-get --purge autoremove -y \
wget && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# OPENING PORTS
EXPOSE ${PORTS}

# START THE CONTAINER
CMD .dropbox-dist/dropboxd \
