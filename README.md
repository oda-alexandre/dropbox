# DROPBOX

![atom](https://raw.githubusercontent.com/oda-alexandre/atom/master/logo-dropbox.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/atom/master/logo-docker.png)

## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [Configuration](#CONFIGURATION)
- [License](#LICENSE)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [Dropbox](https://www.dropbox.com/) pour [Docker](https://www.docker.com), mis à jour automatiquement dans le [Docker Hub](https://hub.docker.com/r/alexandreoda/dropbox/) public.


## PREREQUIS

Installer [Docker](https://www.docker.com)


## INSTALLATION

```
mkdir $HOME/dropbox
```
```
docker run -d --name dropbox -v ${HOME}/dropbox:/home/dropbox/Dropbox --restart=always alexandreoda/dropbox
```

## CONFIGURATION

Utilisez les logs pour la premiere connexion

```
docker logs dropbox
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/dropbox/blob/master/LICENSE)
