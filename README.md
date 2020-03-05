# DROPBOX

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904443/glyph_m1_2x.png)

## INDEX

- [DROPBOX](#dropbox)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [CONFIG](#config)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/dropbox/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/dropbox/commits/master)

## INTRODUCTION

Docker image of :

- [Dropbox](https://www.dropbox.com/)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/dropbox/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/dropbox/).

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

### DOCKER RUN

```\
docker  run -d --name dropbox -v ${HOME}/dropbox:/home/dropbox/Dropbox --restart unless-stopped alexandreoda/dropbox
```

### DOCKER COMPOSE

```yml
version: "3.7"

services:
  dropbox:
    container_name: dropbox
    image: alexandreoda/dropbox
    restart: unless-stopped
    privileged: false
    volumes:
      - "${HOME}/dropbox:/home/dropbox/Dropbox"
```

## CONFIG

Use the logs of container at first launch to get the link of synchronization dropbox

```\
docker  logs dropbox
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/dropbox/blob/master/LICENSE)
