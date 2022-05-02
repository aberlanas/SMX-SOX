---
title: UD0Z Infraestructure
subtitle: "The Last Stand"
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [SMX, SOX]
titlepage: true,
colorlinks: true,
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-senia.pdf"
---

\newpage


# Advice to Seafarers

The recovery test will include the configuration of a series of services, the creation of some users within certain groups (both local and network) and the creation of Login Scripts that carry out a series of checks by writing to the system log.

The exam will last 2 hours, and if you have all the machines prepared and updated and the services described in this document configured, it will be possible to successfully pass the exam.

This document will be available from today (2 of May) in Aules, and could be updated with more info.

# Infraestructure

We will need the next OS installed, *updated* and ready :

-   Windows 10 - **Client**
-   Xubuntu 20.04 - **Client**
-   Ubuntu Server 20.04 - **Server**

All of them must be created with the NAT Network present also in the other module (**SER**).

## Administrators

  OS               eths   Hard Disk    AdminUser       Password
  ---------------- ------ ------------ --------------- ----------
  Win10-Client     1      50GB         winadmin        Win4dmin
  Xubuntu-Client   1      10GB         linadmin        Lin4dmin
  Ubuntu-Server    1      15GB         linadmin        Lin4dmin


We must use this passwords for the local admin users.

\newpage
## IP and DNS

You must configure the DNSServer (BIND) make the next reserves for the machines on the NAT Network:

- `ubuntuserver.smx2022.net`
- `ubuntuclient.smx2022.net`
- `windowsclient.smx2022.net`

All the machines must be "reachables by name" using this name for the services, configuration files, and so on. The use of IP is not *ALLOWED*

You must know how add new alias for a machine in the dns in order to add services like, nfs, ldap, etc. (Will be asked in the exam).

All the network configuration must be set on *netplan* in the GNU/LinuX machines and using the GUI in the Windows Environment.

## Services


Using the resources available in Aules (and GitHub), you must set the next services and manage them:


| Useful tasks |  Link | 
| ------------ | ----- |
| NFS Server on `ubuntuserver.smx2022.net` and client configured using `/etc/fstab` | [ Task NFS ](https://github.com/aberlanas/SMX-SOX/blob/master/Unit03-FileSystems/Unit03-Task10-NFS-01.md) |
| SMB Server on `ubuntuserver.smx2022.net` and client configured using `/etc/fstab` | [ Task SMB ](https://github.com/aberlanas/SMX-SOX/blob/master/Unit03-FileSystems/Unit03-Task13-SMB-02.md) | 
| OpenLDAP Server on `ubuntuserver.smx2022.net` and client configured | [Tasks for OpenLDAP](https://github.com/aberlanas/SMX-SOX/tree/master/Unit06-DomainAdministration) |

## Scripting 

You must be able of:

* Advance using of parameters (BASH and PowerShell).
* Advance usign of STDIN and STDOUT (BASH and PowerShell).
* Manage CSV files (BASH and PowerShell).
* Check and Set Permissions.
* Test and create users.
* Check and create groups.
* Test and create files/folders/symlinks.
* Loops and control structures.
* Variables.
* Read and Write from `syslog`.

| Examples | Links |
| -------- | ----- |
| Tanks    | [ Tanks ](https://github.com/aberlanas/SMX-SOX/blob/master/Unit0X-Resources/UD0X-Resources-Tanks.md)  |





