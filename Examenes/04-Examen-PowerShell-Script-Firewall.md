---
title: Simulacro de Examen - SOX - Scripts
subtitle: "Firewalls y puertos."
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

# Script

Vamos a crear 2 scripts diferentes, uno para GNU/LinuX y otro para Windows,utilizandp BASH y PowerShell respectivamente.

Separar cada una de las acciones mediante `#########` para que quede claro.

## Script GNU/LinuX

- Listado de los usuarios Locales cuyo ID sea mayor que 1000, de esos usuarios ha de mostrar el `login` y el `home-directory`.
- Listado de los grupos en los que haya al menos un usuario local de los listados anteriormente.
- Listado del tamaño de los diferentes `home-directories` y en caso de que superen los 10MBs mostrar un aviso. 

## Script Windows

En PowerShell

- Mostrar las excepciones que haya en el FireWall de Windows a nivel de Sistema.
- Mostrar el contenido del Fichero `~\etc\hosts`. (No está en `C:\`, debéis encontrarlo).
- Mostrar todos los ficheros que han sido modificados en las últimas 24h.
