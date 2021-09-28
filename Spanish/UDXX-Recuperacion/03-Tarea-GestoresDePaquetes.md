---
title: UD-X Recuperación
subtitle: "Tarea XX-03 Gestores de Software (Paquetes)"
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

# Introducción

En esta tarea deberás instalar en el caso de Windows 10 y configurar en el caso de Xubuntu Desktop algunas configuraciones del gestor de paquetes.

Para ello puedes hacer uso de la documentación de las unidades anteriores.

# Tarea 01 - Windows 10

Instala el gestor de paquetes [Chocolately](https://chocolatey.org/) en el Windows 10. Realiza un documento donde se detallen los pasos que has realizado para la instalación.

# Tarea 02 - Windows 10 - Chocolately

Utilizando la documentación de Chocolately, escribe un PowerShell script que compruebe *qué versión tienes* de Notepad++ y si es inferior a la 2.0 que instale la última, estableciendo a continuación que se **NO** se upgradee (*pin*) de manera automática.

# Tarea 03 - Windows 10 - Chocolately II

Utilizando la documentación de Chocolately, escribe un PowerShell script que 
pregunte al usuario si el sistema es un entorno de Desarrollo o de Edición de Imágen.

En caso de que se trate de un *entorno de Desarrollo* debe instalar:

- Scite -> Versión 5.0.0
- VSCodium -> Versión >= 1.54.3

En caso de que se trate de un *entorno de Edición de Imágen*    , debe instalar:

- GIMP -> Versión >= 2.10.22
- VLC media player >= 3.0.12

# Tarea 04 - Xubuntu - Partner

Activar en el Sistema Xubuntu el Repositorio de *partner* para la versión del sistema. 

Adjuntar captura de pantalla del fichero editado y configurado.

# Tarea 05 - Xubuntu - Editor o Desarrollador

Realizad el mismo script que en la tarea 03, pero sin tener en cuenta las versiones de los programas, pero deberéis hacer una comprobación adicional antes de intentar instalar un software, y en caso de que ya esté instalado, mostrar un mensaje indicando que ya se encuentra instalado.

## Ejemplo de ejecución

```shell
 * [ Indique el tipo de sistema ]:
    - Desarrollador (d)
    - Editor (e)
   Pulse la tecla correspondiente : d
   - Comprobando que scite esta instalado:
     * Instalado - Nada que hacer
   - Comprobando que vscodium esta instalado:
     * No instalado - Instalando....
     [[SALIDA DE snap o apt]]
```