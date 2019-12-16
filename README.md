# DROPBOX

<img src="https://banner2.kisspng.com/20180823/kfj/kisspng-dropbox-computer-icons-portable-network-graphics-s-youtube-social-media-network-video-entertainm-5b7f6f3f39ba40.2846138015350782072365.jpg" width="200" height="200"/>


## INDEX

- [DROPBOX](#dropbox)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
  - [CONFIG](#config)
  - [LICENSE](#license)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/dropbox/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/dropbox/commits/master)


## INTRODUCTION

Docker image of :

- [Dropbox](https://www.dropbox.com/)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/dropbox/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/dropbox/).


## PREREQUISITES

Use [docker](https://www.docker.com)


## INSTALL

```
mkdir $HOME/dropbox
docker run -d --name dropbox -v ${HOME}/dropbox:/home/dropbox/Dropbox --restart always alexandreoda/dropbox
```


## CONFIG

Use the logs of container at first launch to get the link of synchronization dropbox

```
docker logs dropbox
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/dropbox/blob/master/LICENSE)
