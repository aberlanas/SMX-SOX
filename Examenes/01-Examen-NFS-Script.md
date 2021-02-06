---
title: Simulacro de Examen - SOX - NFS
subtitle: "NFS, Exports, Permisos y Usuarios"
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [SMX, SOX, NFS]
titlepage: true,
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-lofi.pdf"
---

# Simulacro de Examen para SOX

Para la realización de esta práctica necesitaréis:

- Ubuntu Server.
- Xubuntu Cliente.

# Set-Up

## En el Servidor

Dejad de compartir todas las demás carpetas que pudieráis tener utilizando NFS
y dejad el servicio sin ninguna carpeta configurada.

Instalad el programa "youtube-dl" desde su página oficial:

- [YouTube-DL](https://youtube-dl.org/)

Ejecutadlo para descargar el vídeo y transformarlo en mp3 :

```shell
youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=sq8fFXpSLdw
```

Si falla, arreglar las dependencias para que funcione. Al final debéis acabar con fichero `.mp3` que utilizaremos
en el examen.

Cambiad el nombre del fichero a : `chromonicci-dreamworlds.mp3`.

![Lo-fi cover](imgs/lofi-cover.png)\

## En el cliente

Dejad de montar via /etc/fstab cualquier carpeta mediante SMB o NFS. Dejad los montajes
sin añadidos.

Instalad tanto en el *cliente* como en el *servidor* las `nfs-utils`.

# Configuración

Configurad el servidor NFS para que exporte a la IP de vuestro Xubuntu Cliente la carpeta:

```
/srv/nfs-radio-lofi
```

Y dentro de la carpeta copiad el fichero previamente descargado con `youtube-dl`.

# Script

En el cliente, cread un script que:

- Compruebe que somos root o lo estamos ejecutando con sudo.
- Compruebe que la carpeta `/home/$USER/radio-lofi` existe ($USER ha de ser nuestro usuario de verdad no `root`), si no existe que se cree y que se asignen los permisos adecuados para que el $USER pueda entrar y leer ficheros.
- Compruebe que el programa `mplayer` esté instalado y si no, que lo instale.
- Compruebe que `/srv/nfs-radio-lofi` está montado en `/home/$USER/radio-lofi` y si no, que lo monte (*solo* en ese caso).
- Compruebe que el fichero `chromonicci-dreamworlds.mp3` se puede leer y en ese caso que lo reproduzca con `mplayer` en consola.




