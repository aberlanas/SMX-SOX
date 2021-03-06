---
title: Simulacro de Examen - SOX - CSV y Shell
subtitle: "Gestión de CSV en GNU/LinuX"
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

# Script

Vamos a utilizar un fichero `.csv` para leer datos y utilizarlos para automatizar tareas.

## CSV

Un fichero `.csv` es un fichero con valores separados por comas: "`,`" (o puntos y comas "`;`"). Cada una de las líneas representa una entidad a procesar. Debéis leer el fichero `.csv` en el scrip y hacer las operaciones pertinentes.

Primeras líneas del csv:

```csv
id,username,first_name,modification_time
1,bstennine0,Brady,2020/07/21
2,awaleran1,Atlante,2018/12/14
3,cbroadey2,Carmelia,2019/05/09
4,lbiddleston3,Leonidas,2019/02/21
5,mbrodway4,Merola,2018/10/24
...
```

## Operaciones

Cada una de las lineas del CSV contiene un id, un *username* , un nombre y una fecha de modificación.

Para cada una de las líneas del CSV, cread una *carpeta* en `/srv/coma/` cuyo nombre sea el `username`, y dentro de esa carpeta haya un fichero llamado: "token.tkn" cuyo contenido sea el *first_name* del usuario y la fecha de modificación del fichero `token.tkn` ha de ser la que aparece en el último campo.

Ejemplo de procesar la primera línea:

```shell
$ ls -l /srv/coma/bstennine0/token.tkn 
-rw-r--r-- 1 root root 6 jul 21  2020 /srv/coma/bstennine0/token.tkn

$cat  /srv/coma/bstennine0/token.tkn 
Brady
```
