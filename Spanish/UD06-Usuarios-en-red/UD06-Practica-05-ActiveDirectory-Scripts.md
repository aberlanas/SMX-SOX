---
title: UD06 - Usuarios en Red
subtitle: "Políticas de Grupo y Scripts"
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

# Políticas de Grupo

Las Políticas de Grupo se aplican a los diferentes elementos de un dominio. Existen muchísimas Políticas y muchas vienen ya con un asistente preparado.

Sobre el Directory Activo de Windows 2019 que tenéis montado de la práctica anterior
aplicad a los usuarios Orcos la GPO que se describe en este tutorial respecto 
a que no puedan apagar el equipo.

[ Gestionar GPO en Windows Server 2019](https://www.solvetic.com/tutoriales/article/5403-como-crear-gestionar-gpo-windows-server-2019/)

## Tarea 01 

Cread un Script de PowerShell que muestre todas las Políticas de Grupo que se están aplicando en un Dominio. Podéis consultar esta web:

[ Dr.Scripto ](https://devblogs.microsoft.com/scripting/powertip-use-powershell-to-get-a-listing-of-all-gpos-in-a-domain/)

Cuando lo tengáis configurado y funcionando, avisad al profesor para que lo compruebe.

## Tarea 02

En esta página resumen una serie de comandos muy útiles para trabajar con GPOs desde *PowerShell*.

[ GPO + PowerShell ](https://blog.netwrix.com/2019/04/11/top-10-group-policy-powershell-commands/)

Vamos a comprobar que tal funcionan en nuestro dominio, generad Scripts en PowerShell para resolver cada uno de las siguientes situaciones:

### Script 01

Que pregunte por una máquina del dominio y que genere un informe en *HTML* en 
la carpeta `C:\Reports\Report-$NAMEMACHINE.html` y que lo habra con el navegador de Internet predeterminado.

### Script 02

Que muestre los diferentes `Nombres` y `Logins` de los usuarios que pertenecen al Grupo `Orcos`, creado en la práctica anterior.


### Script 03

Que genere una Política que se llame "Pantallas para Orcos" y que establezca
el tiempo de espera del Salvapantallas a 42 segundos.

![Orco](imgs/goblin-wizard.png)\