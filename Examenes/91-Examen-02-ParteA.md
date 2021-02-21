---
title: Examen - SOX
subtitle: "Grupo B - Parte A"
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [SMX, SOX]
titlepage: true,
page-background: "../rsrc/backgrounds/background5.pdf"
page-background-opacity: 0.4
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-senia.pdf"
---

# Tarea 0

Apuntad en la Pizarra las IPs de las máquinas para que el profesor pueda ir 
comprobando la infraestructura.

El Cliente ha de ser accesible mediante ssh por el profesor (puerto 22): 

Cread un usuario **local** en cada una de las máquinas que esté en los grupos `adm` y en `sudo`.  El usuario ha de ser:

- Usuario : *examinator* 
- Password: *smx2b*

Leed todo el examen antes de comenzar. Cada una de las tareas tiene un entregable, ir añadiendolo al examen, podéis comprimirlo todo en un `.zip` o `.tar.gz` con nombre: "`ALUMN@-SOX-FINAL.zip`" o "`ALUMN@-SOX-FINAL.tar.gz`" donde ALUMN@ ha de sustituirse por vuestro nombre.

El examen (parte A + parte B) tiene **13 puntos disponibles**, vuestra nota será como máximo un 10, pero tenéis más ejercicios para poder elegir.

¡Mucha suerte!

Esta primera parte tenéis hasta el patio para presentarla.

\newpage
# Tarea 01 (3 puntos)

Realizad un Script en PowerShell o BASH que le pida al usuario sobre qué tarjeta de red de las disponibles en el equipo (listándolas) debe obtener datos *IPv4*. Una vez introducida la tarjeta por parte del usuario, el script nos mostrará:

- La IP.
- La red a la que pertenece.
- La puerta de enlace (si la hubiera).
- Y nos indique cuantos hosts cómo máximo pueden haber en la red en la que está conectada dicha tarjeta (dato que se puede calcular a partir de máscara).
- En caso de que tuviera puerta de enlace, debe realizar 3 pings contra esa IP y mostrar el éxito o no de la prueba de conectividad.
  (1 fallo es suficiente para considerarlo fallido.).

El Script ha de llamarse: `cuantos-como-yo-en-cada-red.sh` o `cuantos-como-yo-en-cada-red.ps1` dependiendo de si lo hacéis en PowerShell o BASH.

Ejemplo de ejecución:

```shell
usuario@maquina:~$./cuantos-como-yo-en-cada-red.sh
* Las tarjetas de red conectadas son:
1: lo:
2: enp5s0:
3: enx000ec6d3e152:

 * Dime una tarjeta : enp5s0
 * La IP es : 192.168.1.51
 * La Red es : 192.168.1.0
 * La Puerta de Enlace es: 192.168.1.100
 * La red permite hasta 254 hosts

 * La conectividad tras 3 intentos con la puerta de enlace es : Exito
```
```shell
usuario@maquina:~$./cuantos-como-yo-en-cada-red.sh
* Las tarjetas de red conectadas son:
1: lo:
2: enp5s0:
3: enx000ec6d3e152:

 * Dime una tarjeta : enx000ec6d3e152
 * La IP es : 192.168.32.222
 * La Red es : 192.168.32.0
 * La Puerta de Enlace es: 192.168.33.254
 * La red permite hasta 510 hosts

 * La conectividad tras 3 intentos con la puerta de enlace es : Fallo
```

