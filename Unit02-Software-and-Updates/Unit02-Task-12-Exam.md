---
title: \[Task 12\] - The Assisted Exam
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

In this exam (or chronoruled practice) we must take several  screenshots. Please be kind with your teacher, and take only the sections that matters.

Prepare a document with your name (.odt), in the form:

- *Username_LastName_ExamAssisted.odt*

The time is limited.

![Seafarers](imgs/seafarers01.png)\

*Warning to Seafarers*

`PATHS`, `URLS` and common stuff for scripts could be placed as the first lines of the scripts, in order to stablish at the beginning the 
values and be ready to be changed if the **sysadmin** needs.

Read all the exam to the end **before** start to doing anything.

\newpage
# Task 01: Installation (1 point)

## Xubuntu Client

Install on the Xubuntu Client the AnyDesk package from the Oficial Repository  using the sources.list provided by them.

![AnyDesk](imgs/anydesk-logo.png)\

Execute this command and make a screenshot of the output. Add the screenshot to the document.

```shell
sudo apt update && sudo dpkg -l | grep -i anydesk 
```

## Windows Server

Install on the Window Server the AnyDesk package, from the Oficial Repository.

# Task 02 : Configuration (1 point)

In the Xubuntu, configure AnyDesk to allow remote connections without asking for permissions (with the admin password for Xubuntu).

Make an screenshot of this configuration menu and put it in the document.

Reboot the Windows Server and the Xubuntu Client.

# Task 03 : VPN (1 point)

Without loggin graphically in the Xubuntu Client, connect from the Windows Server to Xubuntu Client and then make a VPN to the System.

Make an screenshot of the VPN working (data transferred, and so on) and put it in the document.

# Task 04 : SSH (1 point)

From the Windows Server using `ssh` make a connection to the Xubuntu Client with the IP from the VPN. Make a screenshot with the RSA key exchange visible.

\newpage
# Task 05 : Limited APT (5 points)

Using the `ssh` and `nano`,  code a Shell script that accepts only this arguments:

- `list-files-of $ANYPACKAGE`
- `install $PACKAGELIMITED`
- `remove $PACKAGELIMITED`
- `reinstall $PACKAGELIMITED`

Where `$PACKAGELIMITED` must be one of the next packages:

- nano
- mc
- bc

The `URLS` to these packages are at the end of the document. 

**SCRIPT MUST BE DONE BY SSH FROM THE WINDOWS MACHINE**. Include several screenshots of the process itself. 

All of the options must be tested and ready for production.

The behaviour of the script must be the next:

\newpage
## list-files-of

If the argument is `list-files-of` the script must show the files that are installed by the package given as a argument. 

If the package is *not installed*, the script must show a custom message.

Examples:

```shell
tic@senia-desktop:~/exam-friday$ ./exam.sh list-files-of senia-networking 
 * THE PACKAGE EXISTS 
/.
/etc
/etc/network
/etc/network/if-up.d
/etc/network/if-up.d/wake-up
/usr
/usr/bin
/usr/bin/senia-cluster
/usr/bin/senia-nmap
/usr/share
/usr/share/doc
/usr/share/doc/senia-networking
/usr/share/doc/senia-networking/changelog.gz
/usr/share/doc/senia-networking/copyright
/usr/share/lintian
/usr/share/lintian/overrides
/usr/share/lintian/overrides/senia-networking
```


```shell
tic@senia-desktop:~/exam-friday$ ./exam.sh list-files-of non-existent-package-on-this-universe
 * THE PACKAGE NOT EXISTS .... What a pity!

```

## install 

If the argument is `install $PACKAGELIMITED` where `$PACKAGELIMITED` must be one of the previous packages described, then the script must download to the `/tmp/` folder using `wget` the deb file and then, install it using the correct command.

## remove 

If the argument is `remove $PACKAGELIMITED` the script must test if the `$PACKAGELIMITED` argument is one of the previous packages and then must be de-installed.

## reinstall

Must remove and install the package given as argument, with the same checks that the previous actions.

## Final Task

Using the `scp` command from the Windows Server, copy the Script to the Windows Server and make a `zipfile` with the document and upload it to Aules.

# Useful Info

## Links

```shell
# A good variable declaration could be this:
PACKAGEDLIMITED="nano mc bc"
```

```shell
http://de.archive.ubuntu.com/ubuntu/pool/main/n/nano/nano_4.8-1ubuntu1_amd64.deb
http://de.archive.ubuntu.com/ubuntu/pool/universe/m/mc/mc_4.8.24-2ubuntu1_amd64.deb
http://de.archive.ubuntu.com/ubuntu/pool/main/b/bc/bc_1.07.1-2build1_amd64.deb
```

