---
title: \[Nagios\] - Nagios Pechakucha
subtitle: "Unit 07"
author: Patxi Sanchis y Angel Berlanas
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


# Nagios y Pechakucha

Instalar Nagios 4 en vuestro servidor Ubuntu y realizar una reserva en el Bind9 para que su URL sea la siguiente

*https://nagios.smx2021.net*

Por supuesto también tendréis que configurar el Apache2 para que se resuelva por nombre el `VirtualHost`. 

Una vez configurado y conectadas las máquinas siguientes (las que tengáis instaladas):

- Ubuntu Server
- Xubuntu Client
- Windows Server Core
- Windows Server
- Windows 10 

Definir para los siguientes servicios cuáles serían vuestras "alertas", en GNU/LinuX: 

 - DHCP
 - SSH
 - Bind9
 - FTP
 - Apache/NGnx
 - Postfix

Si alguien se anima a configurar plugins de Nagios para algún servicio en Windows, será bienvenido.

Recordad que debéis configurar el *Nagios* para que os envíe correos a vuestro correo y configurad un `Bot` de Telegram para mayor interactividad.

![Bot Father](imgs/botfather.png)\

Con todo el proceso realizado. Preparar una Pechakucha, que es una presentación de 20 diapositivas cada una de las cuales debe estar 20 segundos en pantalla mientras habláis, en la que nos expondréis a Patxi y a mi todas las alertas configuradas y cuáles han sido vuestras motivaciones.

![Pecha Kucha](imgs/pechakucha.png)\

**ENTREGA EL JUEVES 24 durante las 4 primeras horas**

El orden de presentación será decidido por *random.org*

En la página siguiente contáis con los puntos que serán tenidos en cuenta.

\newpage
# Puntuación
Se tendrá en cuenta tanto en SOX como en SEX.

Puntos a valorar:

| Concepto 	|  SOX 	| SEX |
|---------------|-------|-----|
| Servicios instalados |  x | x  |
| Servicios configurados | x |  x | 
| Reserva DNS y VirtualHost | - | x | 
| Hablar fluido | x | x |
| En Inglés | x | - | 
| Corrección | x | x | 
| Estilo | x | x |
| Profesionalidad | x | x |


