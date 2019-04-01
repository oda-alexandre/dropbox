FROM debian:stretch-slim

MAINTAINER http://www.oda-alexandre.com/

ENV USER dropbox
ENV PORTS 17500
ENV DEBIAN_FRONTEND noninteractive

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
ca-certificates \
python \
wget && \

# AJOUT UTILISATEUR
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECTION UTILISATEUR
USER ${USER}

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/${USER}

# INSTALLATION DE L'APPLICATION
RUN sudo wget https://www.dropbox.com/download?dl=packages/dropbox.py -O /usr/local/bin/dropbox-cli && \
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf - && \

# NETTOYAGE
sudo apt-get --purge autoremove -y \
wget && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# OUVERTURE DE PORTS
EXPOSE ${PORTS}

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD .dropbox-dist/dropboxd
