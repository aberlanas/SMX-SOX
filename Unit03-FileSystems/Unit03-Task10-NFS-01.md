---
title: \[Stegosaurio\] - Network FileSystem
subtitle: "Unit 03"
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

NFS y Sistemas de ficheros Remotos
==================================

Comenzaremos por NFS como posible sistema de ficheros remoto.

**NFS** son las siglas de Network FileSystem (Sistema de Ficheros en
Red), que es uno de los más populares sistemas de compartición de
archivos. Es muy famoso y para tod\@s los curiosos se trata de un
*protocolo a nivel de aplicación* (OSI).

Las versiones 2 y 3 son válidas y se utilizan ampliamente, pero no fué
hasta la versión 4 cuando se implementó la seguridad mediante *tickets
de Kerberos*, esto se verá más adelante en el módulo. Por ahora que
sepáis que la versión implementada es la 3 en ambos puntos de montaje
(los que aparecen en la Práctica).

Práctica
========

Paso 01
-------

Deberemos configurar en nuestro servidor GNU/LinuX **2** carpetas para
ser exportadas:

-   `/srv/nfs/exportado-todos`
-   `/srv/nfs/exportado-lan`

Estas dos carpetas deberán ser creadas y en **LOCAL** deberán tener
permisos para ser escritas por todos los usuarios del sistema que
pertenezcan al grupo `adm`.

Sin embargo cuando las exportemos deberán comportarse de manera
diferente:

-   `/srv/nfs/exportado-todos` $\rightarrow$ : Exportado para todos los
    equipos en solo lectura.
-   `/srv/nfs/exportado-lan` $\rightarrow$ : Exportado para todos los
    equipos de la red interna vuestra en **solo lectura**.

En la guia Oficial de **Ubuntu** está muy bien explicado cómo se debe
realizar esta configuración (en **Inglés**).

[Help.Ubuntu.com](https://ubuntu.com/server/docs)

Tened en cuenta que como siempre deberéis de **adaptar** la información
disponible a las necesidades del ejercicio.

Respecto a la configuración de **NFS** para tan sólo una red, en algunos
manuales aparece que se puede configurar de la siguiente manera:

``` {.shell}
/srv/mount-point/     192.168.42.0-255.255.255.0(ro,sync,no_subtree_check)

```

Pero en esta versión, es más seguro configurarlo de la siguiente forma:

``` {.shell}
/srv/mount-point/     192.168.42.*(ro,sync,no_subtree_check)

```

Donde el carácter **\*** nos indica que cualquier equipo dentro de la
red *192.168.42.0* con máscara 24 bits (254 IPs), podrá montar de manera
local la carpeta exportada.

Paso 02
-------

Una vez tengamos esto resuelto, deberemos configurar el fichero
`/etc/fstab` del cliente Xubuntu para que monte al inicio las dos
particiones en los puntos de montaje:

-   `/client/todos`
-   `/client/lan`

Deberemos asegurarnos de que se comporta tal y cómo se pide.

Paso 03
-------

Por si hubiera problemas de red, vamos a crear un pequeño script que
compruebe cada **7** minutos que las carpetas siguen montadas y no ha
habido un problema de red. Para ello, crear un **Script** en
`/usr/local/bin/tester-nfs.sh` que al ejecutarse :

-   Compruebe que `/client/todos` está montado. En caso de que no lo
    esté, que lo monte. Debe informar al Syslog de ello.
-   Compruebe que `/client/lan` está montado. En caso de que no lo esté,
    que lo monte. Debe informar al Syslog de ello.

Para realizar la escritura en `syslog` os recomiendo que uséis el
comando `logger`.

Una vez el script esté funcionando, tenga los permisos, etc. Establecer
en el crontab del usuario `root` que se ejecute cada 7 minutos.
Comprobad que efectivamente se está ejecutando de manera periódica.

¿Qué debéis presentar?
----------------------

Esta práctica debe ser evaluada en directo también por el profesor, así
que cuando acabéis cada uno de los pasos, avisadme y compruebo desde el
ordenador del profesor que está funcionando como debe ser.

Una vez os funcione todo, preparad un zip con lo siguiente:

-   El fichero de configuración de NFS del servidor : `/etc/exports`
-   El fichero de fstab del cliente : `/etc/fstab`
-   El comando que se ejecuta para comprobar : `/RELLENA-LA-RUTA-AQUI/`
-   La salida del comando : `crontab -l` redirigida a un fichero.
-   Una captura donde se muestre que el mismo fichero está en ambos
    equipos.
