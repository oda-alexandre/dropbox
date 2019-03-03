# DROPBOX

[![dockeri.co](https://dockeri.co/image/alexandreoda/dropbox)](https://hub.docker.com/r/alexandreoda/dropbox)


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [Configuration](#CONFIGURATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/dropbox.svg)](https://microbadger.com/images/alexandreoda/dropbox)
[![size](https://images.microbadger.com/badges/image/alexandreoda/dropbox.svg)](https://microbadger.com/images/alexandreoda/dropbox")
[![build](https://img.shields.io/docker/build/alexandreoda/dropbox.svg)](https://hub.docker.com/r/alexandreoda/dropbox)
[![automated](https://img.shields.io/docker/automated/alexandreoda/dropbox.svg)](https://hub.docker.com/r/alexandreoda/dropbox)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [Dropbox](https://www.dropbox.com/)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/dropbox/).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
mkdir $HOME/dropbox
docker run -d --name dropbox -v ${HOME}/dropbox:/home/dropbox/Dropbox --restart=always alexandreoda/dropbox
```


## CONFIGURATION

Utilisez les logs du container au premier lancement pour obtenir le lien de synchronisation dropbox

```
docker logs dropbox
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/dropbox/blob/master/LICENSE)
