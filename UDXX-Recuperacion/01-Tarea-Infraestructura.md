---
title: UD-X Infraestructura de la Recuperación
subtitle: "Tarea XX-01 VBoxManage"
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

# Tarea 01 : Infraestructura Inicial

Con el objetivo de ir creando herramientas útiles para la Administración de Sistemas vamos a crear unos shell scripts en el lenguaje de Scripting del anfitrión para gestionar las máquinas virtuales.

* PowerShell
* BASH

Una vez instaladas las máquinas, o mientras se está realizando la instalación programar un Script que utilizando `VBoxManage` realice las siguientes operaciones:

- Muestre por pantalla el nombre de la máquina UbuntuSrv
- Muestre por pantalla el nombre de la máquina Xubuntu Client
- Muestre por pantalla el nombre de la máquina Windows 2019 Server
- Muestre por pantalla el nombre de la máquina Windows 10
- Muestre por pantalla la red NAT que hemos creado así como las reglas 
  de redirección de puertos que tiene asignadas para que podamos trabajar 
  desde fuera de la infraestructura haciendo `ssh`.

Hacedlo también en casa en PowerShell, ya que deberéis ir instalando las máquinas y necesitaréis la infraestructura para ir practicando.

Adjunta los *Scripts/Scripts* en la tarea. 

\newpage
# Tarea 02 : Infraestructura inicial - Improving

Propón 5 acciones adicionales que podría mostrar el script y que fueran útiles como *sysadmin* de la infraestructura.

Entrega un PDF con las propuestas.
