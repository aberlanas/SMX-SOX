---
title: \[Task 11\] - The Shabby Apt
subtitle: "Unit 02"
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [SMX, SOX]
titlepage: true,
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-senia.pdf"
---


# Introduction

At our enterprise: *Mr.Yellow Software and Systems*, we need several tools and items in order to make the Administrator Work better, but we don't want to use the awesome `apt` command (as is installed), we need some kind of script that makes our lives a little bit better...but not so much.

![Seafarers](imgs/seafarers01.png)\

*Warning to Seafarers*

`PATHS`, `URLS` and common stuff for scripts could be placed as the first lines of the scripts, in order to stablish at the beginning the 
values and be ready to be changed if the **sysadmin** needs.

Some of the useful commands that you could need are:

| Command | Description |
|---------|-------------|
| wget    | Download files from the Internet|
| dpkg    | Several actions about debs |



# Task 01

Write a Shell Script that accepts only this arguments:

- `list`
- `install $PACKAGE`
- `remove $PACKAGE`
- `reinstall $PACKAGE`


The behaviour of the script must be the next:

## list

If the argument is `list` the script must show the diferente packages that could be installed with it:

- scite 
- mc
- mc-data
- w3m

The `URLS` to these packages are at the end of the document. 

Example:
```shell
user@host:~$./shabby-apt.sh list
Welcome to the Shabby Apt 
The packages available are:
 * scite
 * mc 
 * mc-data
 * w3m
```

## install 

If the argument is `install $PACKAGE` where `$PACKAGE` must be one of the previous packages described, then the script must download to the `/tmp/` folder using `wget` the deb file and then, install it using the correct command.

## remove 

If the argument is `remove $PACKAGE` the script must test if the `$PACKAGE` argument is one of the previous packages and then must be de-installed.

## reinstall

Must remove and install the package given as argument, with the same checks that the previous actions.


# Useful Info

## Links

```shell
http://de.archive.ubuntu.com/ubuntu/pool/universe/s/scite/scite_4.4.5-2_amd64.deb
http://de.archive.ubuntu.com/ubuntu/pool/universe/m/mc/mc_4.8.26-1.1_amd64.deb
http://de.archive.ubuntu.com/ubuntu/pool/universe/m/mc/mc-data_4.8.26-1.1_all.deb
http://de.archive.ubuntu.com/ubuntu/pool/main/w/w3m/w3m_0.5.3+git20210102-6build1_amd64.deb
```
