---
title: Simulacro de Examen - SOX - Scripts
subtitle: "Pure Scripting Carbono"
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
titlepage-background: "../rsrc/backgrounds/background-title.pdf"
---

# Script

Utilizando `PowerShell` (Windows) o BASH (GNU/LinuX), realizad un script que
pida al usuario un número (n).

Mostrad los primeros `n` números primos, uno por línea.

Recordad que un número primo es aquel que tan sólo es divisible por el mismo y la unidad (1). Para realizar esta comprobación podéis utilizar la operación aritmética *módulo* que muestra el *resto* de la división entera entre dos números.

Ejemplo:

```shell
#!/bin/bash

DIVIDENDO=13
DIVISOR=5
let RESTO=$DIVIDENDO%$DIVISOR
echo $RESTO

exit 0
```

Esto dará como resultado: `3`

# Mejoras

- El Script puede aceptar el número de primos como argumento.
