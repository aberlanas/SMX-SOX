---
title: Unit 01 - VirtualBox and NAT Infraestructure
subtitle: "Unit 01"
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

\newpage
# Initial Infraestructure

In this document we will found the initial infraestructure and some VirtualBox configurations
needed.

We will work with a lot of networking concepts and is a very good idea have a strong base of *how the networks are*.

For now we will only install the Ubuntu Server 20.04 OS, that you can find in the Ubuntu Oficial Webpage:

- [Ubuntu Webpage](https://ubuntu.com/download/server)

Other Machines that we *could* use along the year would be (among others):

-   Windows 10 - **Client**
-   Windows 2019 - **Server**
-   Xubuntu 20.04 - **Client**
-   Ubuntu Server 20.04 - **Server**

Only install the machines that the teacher needs in each moment, for now Windows Machines, are disabled.

Administrators
------------------------

  Máquina          state         eths   Disco Duro   Usuario Admin   Password
  --------------   ------       -----   ----------   --------------- ---------- 
  Win10-Client     *Disabled*     1      50GB         winadmin        Win4dmin
  Windows-Server   *Disabled*     1      50GB         winadmin        Win4dmin
  Xubuntu-Client   Enabled        1      10GB         linadmin        Lin4dmin
  Ubuntu-Server    Enabled        1      15GB         linadmin        Lin4dmin

The passwords *MUST BE THESE*.

All the machines must be set with the parameter:

`Usar Cache de E/S del Anfitrion`.

\newpage
## NAT on VirtualBox

As a network we will use a NAT Network in VirtualBox

The *NAT* must be named: `NatSMX` and must be have the DHCP  disabled.

```shell
#!/bin/bash

VBoxManage natnetwork remove --netname NatSMX
VBoxManage natnetwork add --netname NatSMX --network 192.168.42.0/24 --enable --dhcp off

VBoxManage natnetwork modify --netname NatSMX --port-forward-4 "ssh-us:tcp:[]:2210:[192.168.42.10]:22"
VBoxManage natnetwork modify --netname NatSMX --port-forward-4 "ssh-uc:tcp:[]:2220:[192.168.42.20]:22"

exit 0
```

### Task 01

What is the purpose of this script? Copy it and comment (in Spanish or English), each *important* line.

\newpage
## Networking (IPs)

The IP addresses of the Machines are:

| IP | Machine |
|----|---------|
| 192.168.42.10 | Ubuntu Server|
| 192.168.42.20 | Xubuntu Desktop|
| 192.168.42.30 | Windows 10(*Disabled*)|
| 192.168.42.40 | Windows 2019 Server(*Disabled*)|

# Netplan configuration for Server

Netplan configuration file for Server (once installed)

```netplan
# This is the network config written for 
# SMX machines
network:
  version: 2
  ethernets:
    enp0s3:
      dhcp4: no
      addresses: [192.168.42.10/24]
      gateway4: 192.168.42.1
      nameservers:
        addresses: [8.8.8.8,1.1.1.1]
```

*WARNING* : This DNS are for the *Real World* in our class, is a good idea using alternative DNS:

- 172.27.111.5
- 172.27.111.6

\newpage
# Ubuntu Server and CLI

In the professional World Server Operating Systems usually do not have
graphical access available, then throughout the course we will perform all
the configurations on **Ubuntu Server** using the commands.

Tasks such as command execution, copying and pasting from the internet,
etc. We will solve it using `SSH` or other similar tools. (`ssh` is the best ^_^).
