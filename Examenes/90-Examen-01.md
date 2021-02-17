---
title: Examen - SOX
subtitle: "Grupo A"
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

# Tarea 1

## Infraestructura

- Servidor Ubuntu
- Cliente Xubuntu

Apuntad en la Pizarra las IPs de las máquinas para que el profesor pueda ir 
comprobando la infraestructura.

El Cliente ha de ser accesible mediante ssh por el profesor (puerto 22): 

Cread un usuario **local** en cada una de las máquinas que esté en los grupos `adm` y en `sudo`.  El usuario ha de ser:

- Usuario : *examinator* 
- Password: *smx2a*

## Creación de usuarios en red (1 punto)

Cread un grupo llamado: `horde` utilizando la interfaz de `phpldapadmin` y cread los siguientes usuarios dentro del grupo: `trasgos`.

Detalles del grupo:

- `gid=5050`

Detalles de los usuarios:

UIDS:

- 10051
- 10052

Carpetas personales:

`/home/trasgos/$USER/`

Una vez creados comprobad que pueden iniciar sesión en el cliente Xubuntu. Arreglad lo necesario para que funcione.

Ejecutad el comando:

```shell
ldapsearch -x -h localhost -p 389 -b "cn=trasgos,dc=ubuntusrvXX,dc=smx200,dc=net"
```

Redirigid la salida a un fichero y adjuntarlo en la entrega del examen, con nombre:

```shell
1-1-ldap.ldif
```

## Puntos de montaje remotos ( 1 punto)

Utilizando el servicio NFS, configurar la compartición de la carpeta compartida : `/srv/trasgos/` en la *red* de los clientes. Adjuntad una copia del fichero de configuración de *NFS* en la entrega del examen con nombre:

```shell
1-2-exports.nfs-server
```

Copiad el fichero que se adjunta en el examen en esa carpeta: `trasgos-recursos.tar.gz`

## Script de usuarios ( 3 puntos )

Realizad un Script que al ejecutarlo compruebe:

- Que el usuario que lo ejecuta es remoto del grupo `trasgos`.
- En caso afirmativo, creará una carpeta en `$HOME` cuyo nombre será: `trasgonet`.
- Montará mediante *nfs* la carpeta compartida en el servidor.
- Copiará su contenido a la carpeta `$HOME/workspace` (si no existe crearla).
- Descomprimirá el fichero.

