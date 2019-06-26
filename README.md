# DROPBOX

<img src="https://banner2.kisspng.com/20180823/kfj/kisspng-dropbox-computer-icons-portable-network-graphics-s-youtube-social-media-network-video-entertainm-5b7f6f3f39ba40.2846138015350782072365.jpg" />


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [Configuration](#CONFIGURATION)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/dropbox/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/dropbox/commits/master)


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
