---
title: Simulacro de Examen - SOX - Scripts
subtitle: "Pure Scripting Platinum"
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

Utilizando `PowerShell` (Windows) y BASH (GNU/LinuX), realizad un script que
muestre :

- El nombre de la máquina.
- El número de tarjetas de Red que tiene la máquina (sin contar loopback)
- Las direcciones IP de las tarjetas (si no tiene mostrar : "UNKNOWN" ) y no mostrar los siguientes punto.
- Las redes a las que pertenecen dichas IPs.
- La puerta de enlace de esas redes.

Ejemplo de ejecución:

```shell
* El equipo ubuntusrv tiene estas tarjetas de red : 2
* Tarjeta 1
  - IP : 192.168.4.100/23
  - Red : 192.168.4.0
  - Gateway: 192.168.4.254
* Tarjeta 2
  - IP : UNKNOWN
```

Debéis subir 2 scripts, uno en BASH y otro en PowerShell.

