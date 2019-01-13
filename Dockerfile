FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
ca-certificates \
python \
wget

# AJOUT UTILISATEUR
RUN useradd -d /home/dropbox -m dropbox && \
passwd -d dropbox && \
adduser dropbox sudo

# SELECTION UTILISATEUR
USER dropbox

# SELECTION DE L'ESPACE DE TRAVAIL
WORKDIR /home/dropbox

# INSTALLATION DE L'APPLICATION
RUN sudo wget https://www.dropbox.com/download?dl=packages/dropbox.py -O /usr/local/bin/dropbox-cli && \
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

# NETTOYAGE
RUN sudo apt-get --purge autoremove -y \
wget && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# EXPOSITION PORT
EXPOSE 17500

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD .dropbox-dist/dropboxd
