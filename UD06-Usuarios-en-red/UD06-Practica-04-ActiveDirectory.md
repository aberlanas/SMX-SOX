---
title: UD06 - Usuarios en Red
subtitle: "Configuración del Controlador del Dominio y Unión al mismo"
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [SMX, SOX, Dominios]
titlepage: true,
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-senia.pdf"
---

# Instalación y configuración de AD

## Requisitos previos

Contaremos con la guía que vimos en la unidad anterior de instalación de Windows 2019 server, en el caso de que no tengamos instalado el servidor windows.

Los requisitos hardware son los mismos que vimos en las unidades anteriores.

Hay que tener en cuenta que es muy importante que el equipo que vaya a ser el controlador de dominio cuente con una IP estática, ya que todos los otros ordenadores y recursos que utilizaremos en el dominio dependen de que el servidor siempre cuente con la misma IP.

## Cambio de nombre del equipo

Si es necesario cambiar el nombre del equipo a uno que sea fácil de recordar podremos hacerlo desde:

* El administrador del servidor -> _Servidor Local_
* Usando la opción _Sistema -> Configuración avanzada del sistema > Nombre de equipo_

## Configuración de la red

Para las capturas que veréis a lo largo de esta práctica, debéis tener en cuena que en mi caso la
configuración de la red es:

| Campo | Valor |
| ----- | ----- |
| IP|  192.168.1.59 |
| MASK | 255.255.255.0|
| Gateway | 192.168.1.1|
| DNS Server | 127.0.0.1 |
| DNS Server 2 | 1.1.1.1 |

Vosotros debéis tener clara *vuestra* configuración de la red.


## Configuración del Servidor de Dominio

Una vez configurados el Nombre y la dirección IP del servidor procedemos a instalar los roles respectivos de un controlador de Dominio

## Instalando el rol de Directorio Activo.

Desde el _Administrador del servidor_ seleccionamos la opción _Agregar roles y características_ donde veremos el siguiente asistente, que nos indica que debemos completar antes las tareas que aparecen.

Una vez verificado, seleccionaremos el tipo de Instalación: _Instalación basada en características o roles._

Seleccionamos nuestro servidor (el único).

![Windows AD](./imgs/Win2019-AD-01.png)\

Seguiremos el asistente y nos instalará todos los roles que hemos seleccionado.

![Windows AD](./imgs/Win2019-AD-02.png)\


![Windows AD](./imgs/Win2019-AD-03.png)\

![Windows AD](./imgs/Win2019-AD-04.png)\

Una vez se haya instalado los componentes:

*REINICIAD EL EQUIPO*

## Configuración del Directorio Activo

Ahora al reiniciar el equipo deberemos configurar nuestro Dominio.

![Windows AD](./imgs/Win2019-AD-05.png)\

Seguid los pasos que se muestran en las siguientes capturas:

![Windows AD](./imgs/Win2019-AD-06.png)\

De contraseña estableced: *Win4dm1n* 

![Windows AD](./imgs/Win2019-AD-07.png)\


![Windows AD](./imgs/Win2019-AD-08.png)\

![Windows AD](./imgs/Win2019-AD-09.png)\

![Windows AD](./imgs/Win2019-AD-10.png)\

Aquí podremos guardarnos el **script** de generar via *PowerShell* nuestro Active Directory. Nos lo guardaremos y lo entregaremos en Aules.

![Windows AD](./imgs/Win2019-AD-11.png)\

Reiniciad el equipo

## Creación de usuarios y grupos en Active Directory

Ahora en el menú de Administración del Servidor podéis encontrar el *Centro de Administración del Active Directory*

![Windows AD](./imgs/Win2019-AD-15.png)\

Cread dentro de *Users* un grupo *Orcos* y 5 Usuarios *orco01, orco02,...*

![Windows AD](./imgs/Win2019-AD-16.png)\

Seguid los pasos que se muestran en la imagen:

![Windows AD](./imgs/Win2019-AD-17.png)\

De contraseña estableced: *Piramide123*.

Añadid los diferentes Orcos al grupo `Orcos`.

# Unión al Dominio de Windows 10.

Siguiendo los pasos descritos en este artículo:

https://www.solvetic.com/tutoriales/article/2706-como-anadir-windows-10-en-dominio-windows-server-2019-2016/

Unid la máquina Windows 10 al Dominio recién creado y comprobad que los usuarios *orcos* pueden iniciar sesión.

Avisad al profesor cuando lo tengáis.
