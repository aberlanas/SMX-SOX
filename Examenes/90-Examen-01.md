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

# Tarea 0

Apuntad en la Pizarra las IPs de las máquinas para que el profesor pueda ir 
comprobando la infraestructura.

El Cliente ha de ser accesible mediante ssh por el profesor (puerto 22): 

Cread un usuario **local** en cada una de las máquinas que esté en los grupos `adm` y en `sudo`.  El usuario ha de ser:

- Usuario : *examinator* 
- Password: *smx2a*

Leed todo el examen antes de comenzar. Cada una de las tareas tiene un entregable, ir añadiendolo al examen, podéis comprimirlo todo en un `.zip` o `.tar.gz` con nombre: "`ALUMN@-SOX-FINAL.zip`" o "`ALUMN@-SOX-FINAL.zip`" donde ALUMN@ ha de sustituirse por vuestro nombre.

¡Mucha suerte!

\newpage
# Tarea 1 (5 puntos)

Máquinas involucradas:

- Servidor Ubuntu
- Cliente Xubuntu

## Creación de usuarios en red (1 punto)

Cread un grupo llamado: `trasgos` utilizando la interfaz de `phpldapadmin` y cread los siguientes usuarios dentro del grupo: `trasgos`.

Detalles del grupo:

- `gid=5050`

Detalles de los usuarios:

UIDS:

- 10051 
- 10052

Usuarios:

- trasgo01
- trasgo02

Carpetas personales:

`/home/trasgos/$USER/`

Una vez creados comprobad que pueden iniciar sesión en el cliente Xubuntu. Arreglad lo necesario para que funcione.

Ejecutad el comando:

```shell
ldapsearch -x -h localhost -p 389 -b "cn=trasgos,dc=ubuntusrvXX,dc=smx200,dc=net"
```

Redirigid la salida a un fichero y adjuntarlo en la entrega del examen, con nombre:

```shell
salida-ldap.ldif
```

Cuando tengáis esto avisadme para que lo revise desde mi ordenador.

## Puntos de montaje remotos ( 1 punto)

Utilizando el servicio NFS, configurar la compartición de la carpeta compartida en *solo-lectura* : `/srv/trasgos/` en la *red* de los clientes. Adjuntad una copia del fichero de configuración de *NFS* en la entrega del examen con nombre:

```shell
fichero-exports.nfs-server
```

Copiad el fichero que se adjunta en el examen en esa carpeta, el fichero lo podéis encontrar en Aules junto con el examen. Debéis usar `scp` para copiarlo al servidor:

```shell
trasgos-recursos.tar.xz
```

## Script de usuarios ( 3 puntos )

Realizad un Script que al ejecutarlo debe:

- Comprobar que el usuario que lo ejecuta es remoto del grupo `trasgos`, es decir que *pertenece* a la `cn=trasgos`.
- En caso afirmativo, creará una carpeta en `$HOME` cuyo nombre será: `trasgonet`.
- Montará mediante *nfs* la carpeta compartida en el servidor.
- Copiará su contenido a la carpeta `$HOME/workspace` (si no existe crearla).
- Descomprimirá el fichero comprimido (*internet* es tu amigo) en `$HOME/workspace`
- Dentro hay un fichero que se llama: `packages.csv`. Leer el fichero y para cada uno de los paquetes que aparecen
  listados, comprobad que está instalado y si no lo está instaladlo mediante `apt`.

El Script ha de llamarse: `trasgo-monta-monta-trasgo.sh` y debéis adjuntarlo en la entrega del examen.

## Script de LDAP (1 punto)

Utilizando el comando de LDAP antes mencionado. Realiza un script que se llame `cuanto-trasgo-hay.sh` y cuente el número de usuarios que hay dentro de la entidad `cn=trasgos` que habéis creado (soy consciente de que hay solo 2, pero debe contarlos extrayéndo la información a partir de la ejecución.)

\newpage
# Tarea 02 (5 puntos)

Máquinas involucradas: 

- Servidor Windows 2019

## OU en el Active Directory (1 punto)

Cread una OU (Organizational Unit) en vuestro Active Directory que se llame:

- trasgos-de-ALUMNO

donde ALUMNO ha de ser vuestro nombre: **Brittany, Elias, Richard, Javi, Samia, Maria o Adrian**.

*Realizad una captura de pantalla de la OU Creada* para entregarla en el examen.

## Script de Creación de Usuarios (3 puntos).

Usando el fichero `usuarios-trasgoides.csv` que se adjunta en el examen, preparad un Script en `PowerShell` que lea los diferentes usuarios y los cree en la *OU* que acabáis de crear.

Pistas:

- New-ADUser

El Script ha de llamarse: `reclutador-trasgos.ps1`.

**Entregadlo**.

## Configuración horas de inicio de sesión (1 punto)

Estableced para el usuario: `trasgo13` que solo pueda iniciar sesión desde las 8:00 hasta las 20:00 de Lunes a Jueves.

**Realizad una captura de pantalla donde se muestre la configuración de restricciones**.

\newpage
# Tarea 03 (2 puntos)

Realizad un Script en PowerShell o BASH que obtenga la *IPv4* de todas las tarjetas Ethernet y/o Wi-Fi de la máquina y por cada una de ellas
nos indique cuantos hosts cómo máximo pueden haber en la red en la que está conectada dicha tarjeta (máscara).

El Script ha de llamarse: `cuantos-como-yo-en-cada-red.sh` o `cuantos-como-yo-en-cada-red.ps1` dependiendo de si lo hacéis en PowerShell o BASH.

