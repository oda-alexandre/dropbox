# **<center>Dropbox</center>**


**INTRODUCTION**

*Dropbox https://www.dropbox.com/fr/ via docker*


**PREREQUIS**

*Installer docker*


**INSTALLATION**

copier/coller dans un terminal :

    mkdir $HOME/dropbox

    docker run -d --name dropbox -v ${HOME}/dropbox:/home/dropbox/Dropbox --restart=always alexandreoda/dropbox

**CONFIGURATION**

*Pour configurer le compte dropbox pour la premiere fois*

copier/coller dans un terminal :

    docker logs dropbox

**LICENSE**

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/dropbox/blob/master/LICENSE)
