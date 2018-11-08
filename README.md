# DROPBOX

![dropbox](https://raw.githubusercontent.com/oda-alexandre/dropbox/master/logo-dropbox.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/dropbox/master/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [Configuration](#CONFIGURATION)
- [License](#LICENSE)


## BUILD DOCKER

[![dropbox docker build](https://img.shields.io/docker/build/alexandreoda/dropbox.svg)](https://hub.docker.com/r/alexandreoda/dropbox)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [Dropbox](https://www.dropbox.com/) pour [Docker](https://www.docker.com), mis à jour automatiquement dans le [Docker Hub](https://hub.docker.com/r/alexandreoda/dropbox/) public.


## PREREQUIS

Installer [Docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name dropbox -v ${HOME}:/home/dropbox --restart=always alexandreoda/dropbox
```


## CONFIGURATION

Utilisez les logs du container au premier lancement pour obtenir le lien de synchronisation dropbox

```
docker logs dropbox
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/dropbox/blob/master/LICENSE)
