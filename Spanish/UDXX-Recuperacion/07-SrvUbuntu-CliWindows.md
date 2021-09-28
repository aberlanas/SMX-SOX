---
title: UD-X Recuperación
subtitle: "Tarea XX-07-OpenLDAP+Windows"
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

# Tarea: Unión al dominio - Windows Cliente


En esta tarea vamos a conseguir autenticarnos en la máquina Windows
utilizando los usuarios que hemos creado en nuestro servidor LDAP
(`trasgo01`, `trasgo02`,...).

## Requisitos

-   **Conectividad**: Necesitaremos que se resuelva por nombre el
    dominio de nuestro

servidor.

`ping ubuntusrv.smx2020.net`

-   **OpenLDAP server** instalado y acceso al `phpLDAPadmin` desde el
    cliente Windows (por comodidad).
-   **Usuarios Trasgos** creados.

## Instalación de pGina


Acceder a la Web oficial de pGina : [pGina Webpage](http://pgina.org/) y
descargaros la versión adecuada. Instalarla en vuestro cliente Windows
10.

![](./imgs/pgina.png)

Una vez esté instalada, reiniciar Windows.

## Configuración de pGina


Configurar pGina tal y como se ve en la imágen (adaptándolo a vuestras
necesidades).

![](./imgs/pgina-conf.png)

Debéis comprobar en la pestaña de `Simulation` que habéis realizado la
configuración de la manera adecuada.

![](./imgs/pgina-simulation.png)

Una vez lo tengáis verde (operativo), salir de la sesión e iniciad
sesión con los usuarios `trasgos`...

![](./imgs/pgina-logon.png)

Se puede comprobar que todo ha ido bien abriendo una terminal con el
Usuario `trasgo01`,etc.

![](./imgs/pgina-login.png)

Avisad al profesor cuando estéis aquí.

## Configuraciones adicionales

Investigad acerca del software [Chocolatey](https://chocolatey.org/) e
instaladlo en el Windows Cliente (*Individual*) y probad a instalar
**desde la línea de comandos** y usando chocolatey:

-   VideoLAN
-   Notepad++ 7.9.2

Comprobad que lo podéis hacer para todos los usuarios.
