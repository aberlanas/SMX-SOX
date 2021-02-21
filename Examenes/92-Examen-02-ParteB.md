---
title: Examen - SOX
subtitle: "Grupo B - Parte B"
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

# Tarea 2 (6 puntos)

Máquinas involucradas:

- Servidor Ubuntu
- Cliente Xubuntu

## Creación de usuarios en red (1 punto)

Cread un grupo llamado: `isengard` utilizando la interfaz de `phpldapadmin` y cread los siguientes usuarios dentro del grupo: `isengard`.

Detalles del grupo:

- `gid=7070`

Detalles de los usuarios:

UIDS:

- 20051 
- 20052

Usuarios:

- uruk01
- uruk02

Carpetas personales:

`/home/isengard/$USER/`

Una vez creados comprobad que pueden iniciar sesión en el cliente Xubuntu. Arreglad lo necesario para que funcione.

Ejecutad el comando:

```shell
ldapsearch -x -h localhost -p 389 -b "cn=isengard,dc=ubuntusrvXX,dc=smx2020,dc=net"
```

Redirigid la salida a un fichero y adjuntarlo en la entrega del *examen*, con nombre:

```shell
salida-ldap.ldif
```

Cuando tengáis esto avisadme para que lo revise desde mi ordenador (si hiciera falta)

## Puntos de montaje remotos ( 1 punto)

Utilizando el servicio NFS, configurar la compartición de la carpeta compartida en *solo-lectura* : `/srv/orthanc/` en la *red* de los clientes. Adjuntad una copia del fichero de configuración de *NFS* en la entrega del examen con nombre:

```shell
fichero-exports.nfs-server
```

Copiad el fichero que se adjunta en el examen en esa carpeta, el fichero lo podéis encontrar en Aules junto con el examen. Debéis usar `scp` para copiarlo al servidor:

```shell
isengard-recursos.tar.xz
```

Configurad el fichero `fstab` en el *cliente* Xubuntu para que monte en el inicio la carpeta en el directorio local: 

- `/isengard/`

## Script de usuarios ( 3 puntos )

Realizad un Script que al ejecutarlo debe:

- Comprobar que el usuario que lo ejecuta es uno de los usuarios remotos del grupo `isengard`, es decir que *pertenece* al grupo y tiene los `uid` mayores de 20000.
- En caso afirmativo, creará una carpeta en `$HOME` cuyo nombre será: `mano-blanca`.
- Dejará la carpeta vacía en caso de que ya contuviera algún fichero de una ejecución anterior del script.
- Copiará todos los archivos comprimidos del directorio `/isengard/` en `mano-blanca`.
- Descomprimirá el fichero comprimido (*internet* es tu amigo) en `mano-blanca`.
- Dentro hay un fichero que se llama: `packages.csv`. Leer el fichero y para cada uno de los paquetes que aparecen
  listados, comprobad que está instalado y si no lo está instaladlo mediante `apt`, indicando en un mensaje en que consiste 
  el paquete.

El Script ha de llamarse: `uruk-descomprime-instala.sh` y debéis *adjuntarlo* en la entrega del examen.

## Script de LDAP (1 punto)

Utilizando el comando de LDAP antes mencionado. Realiza un script que se llame `cuantos-servidores-de-Saruman-hay.sh` y cuente el número de usuarios que hay dentro de la entidad `cn=isengard` que habéis creado (soy consciente de que hay solo 2, pero debe contarlos extrayéndo la información a partir de la ejecución). Adjuntad el Script en la entrega.

\newpage
# Tarea 02 (4 puntos)

Máquinas involucradas: 

- Servidor Windows 2019

## OU en el Active Directory (1 punto)

Cread una OU (Organizational Unit) en vuestro Active Directory al nivel de los usuarios que se llame: 

- isengard-de-ALUMNO

Cuyos datos sean:

- **Nombre**: isengar-de-ALUMNO.
- **Pais**: Angola.
- **Ciudad**: Malanje.

donde ALUMNO ha de ser vuestro nombre: **Diego, Carlos, Miguel, Adrian, Raul, Ruben o David**.

- *Realizad una captura de pantalla de la OU Creada* para entregarla en el examen.
- Así como un Script en PowerShell que muestre en formato tabla los campos rellenados previamente:
  - Nombre.
  - País.
  - Ciudad.


## Script de Creación de Usuarios (2 puntos).

Usando el fichero `usuarios-trasgoides.csv` que se adjunta en el examen, preparad un Script en `PowerShell` que lea los diferentes usuarios y los cree en la *OU* que acabáis de crear.

Pistas:

- New-ADUser

El Script ha de llamarse: `reclutador-urukhai.ps1`.

**Entregadlo**, así como una captura de pantalla donde se muestre que los usuarios han sido creados en la *OU* correspondiente.

## Configuración horas de inicio de sesión (1 punto)

Estableced para el usuario: `uruk13` que solo pueda iniciar sesión desde las 1:00 hasta las 10:00 de Martes a Viernes.

**Realizad una captura de pantalla donde se muestre la configuración de restricciones**.

