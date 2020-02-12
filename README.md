# DROPBOX

<img src="https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904443/glyph_m1_2x.png" width="200" height="200"/>


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
mkdir ${HOME}/dropbox
docker run -d --name dropbox -v ${HOME}/dropbox:/home/dropbox/Dropbox --restart always alexandreoda/dropbox
```


## CONFIG

Use the logs of container at first launch to get the link of synchronization dropbox

```
docker logs dropbox
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/dropbox/blob/master/LICENSE)
